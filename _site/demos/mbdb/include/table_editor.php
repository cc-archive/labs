<?php
    /**
    * o------------------------------------------------------------------------------o
    * | This package is dual licensed as GPL and a commercial license.               |
    * | If you use the code commercially (or if you don't want to be restricted by   |
    * | the GPL license), you will need the commercial license. It's only £49 (GBP - |
    * | roughly $98 depending on the exchange rate) and helps me out a lot. Thanks.  |
    * o------------------------------------------------------------------------------o
    *
    * © Copyright Richard Heyes
    */

    /**
    * TableEditor Class 1.0.6
    *
    * Allows editing of table information. See http://www.phpguru.org/static/TableEditor.html
    * for documentation.
    */

    /**
    * TODO:
    *
    * o Multiple column primary keys
    * o NULL support (?)
    * o auto_increment recognition
    * o Check that, when adding, fields with preset value lists contain one of the preset
    *   values.
    */

    require_once('Pager/Sliding.php');
    require_once('Net/URL.php');


    class TableEditor
    {
        /**
        * Database handle
        * @var object
        */
        var $db;


        /**
        * Name of primary key field
        * @var string
        */
        var $pk;


        /**
        * Name of table to edit
        * @var string
        */
        var $table;


        /**
        * Field data
        * @var array
        */
        var $fields;


        /**
        * Array of errors
        * @var array
        */
        var $errors;


        /**
        * Array of contextual errors, used for add/edit/copy page
        * @var array
        */
        var $contextErrors;


        /**
        * Various configuration settings
        * @var array
        */
        var $config;


        /**
        * Order by field and direction
        * @var array
        */
        var $orderby;


        /**
        * Addition callbacks
        * @var array
        */
        var $addCallbacks;


        /**
        * Edit callbacks
        * @var array
        */
        var $editCallbacks;


        /**
        * Copy callbacks
        * @var array
        */
        var $copyCallbacks;


        /**
        * Delete callbacks
        * @var array
        */
        var $deleteCallbacks;


        /**
        * Data validation callbacks
        * @var array
        */
        var $validationCallbacks;


        /**
        * Filter conditions
        * @var array
        */
        var $dataFilters;


        /**
        * Extra tables to join to
        * @var array
        */
        var $joinTables;


        /**
        * Constructor
        *
        * @param resource $db    Your MySQL connection resource
        * @param string   $table The table to be edited
        */
        function TableEditor($db, $table)
        {
            /**
            * If X-Moz set to prefetch, exit
            */
            if (!empty($_SERVER['HTTP_X_MOZ']) AND strcasecmp($_SERVER['HTTP_X_MOZ'], 'prefetch') == 0) {
                exit;
            }

            // Check the db resource
            if (!is_resource($db)) {
                die("First argument is not a valid database connection!");
            }

            $this->db         = $db;
            $this->table      = $table;
            $this->search     = null;
            $this->joinTables = array();

            $this->config['perPage']        = 25;
            $this->config['allowPKEditing'] = false;
            $this->config['allowView']      = true;
            $this->config['allowCSV']       = true;
            $this->config['allowAdd']       = true;
            $this->config['allowEdit']      = true;
            $this->config['allowCopy']      = true;
            $this->config['allowDelete']    = true;
            $this->config['allowASearch']   = true;
            $this->config['csvEscapeFunc']  = array($this, 'csvEscapeData');
            $this->config['useFunctions']   = false;
            $this->config['functions']      = array('Current Date'          => create_function('', 'return date("Y-m-d");'),
                                                    'Current Time'          => create_function('', 'return date("H:i:s");'),                                                     'Current Date and Time' => create_function('', 'return date("Y-m-d H:i:s");'),
                                                    'MD5 Hash'              => 'md5',                                                     'Unix Timestamp'        => 'time');
            $this->config['searchableFields'] = array();
            $this->config['title']            = 'MySQL TableEditor';
            $this->config['headerfile']       = null;
            $this->config['footerfile']       = null;

            $this->getStructure($table);
        }


        /**
        * PHP5 Constructor
        */
        function __construct()
        {
            $args = func_get_args();
            call_user_func_array(array(&$this, 'TableEditor'), $args);
        }


        /**
        * Adds an error to the object
        *
        * @param string $error The error message
        */
        function addError($error)
        {
            $this->errors[] = $error;
        }


        /**
        * Sets a contextual error for the add/edit/copy pages. These
        * errors appear next to the appropriate input. There can only be
        * one.
        *
        * @param string $field Field to set error for
        * @param string $error Error message to display
        */
        function setContextualError($field, $error)
        {
            $this->contextErrors[$field] = $error;
        }


        /**
        * Sets a config value
        *
        * @param string $name  Name of the config parameter
        * @param mixed  $value Value to set the parameter to
        */
        function setConfig($name, $value)
        {
            if (in_array($name, array('headerfile', 'footerfile')) AND !file_exists($value)) {
                $this->errors[] = "Failed to find $name: " . htmlspecialchars($value);
                return;
            }

            $this->config[$name] = $value;
        }


        /**
        * Retrieves config value
        *
        * @param string $name Name of the config parameter
        */
        function getConfig($name)
        {
            return $this->config[$name];
        }


        /**
        * Sets default order by
        *
        * @param string $field     Name of field to order by
        * @param int    $direction 1 = ascending, 0 = descending
        */
        function setDefaultOrderby($field, $direction = 1)
        {
            $this->orderby = array('field' => $field, 'direction' => (int)$direction);
        }


        /**
        * Sets default values for additions. Particularly useful for when fields
        * are hidden from users on the add page
        *
        * @param array $arr Associative array of default values, keyed by field name,
        *                   values are the default values.
        */
        function setDefaultValues($arr)
        {
            if (is_array($arr)) {
                foreach ($arr as $field => $v) {
                    if (!empty($this->fields[$field])) {
                        $this->fields[$field]['default'] = $v;
                    }
                }
            }
        }


        /**
        * Sets which fields are required to be filled in on the add/edit/copy pages.
        * If one is left blank, an error is shown.
        *
        * @param string ... One or more field names which are required
        */
        function setRequiredFields()
        {
            $args = func_get_args();

            foreach ($args as $a) {
                if (!empty($this->fields[$a])) {
                    $this->fields[$a]['required'] = true;
                }
            }
        }


        /**
        * Sets which fields can be searched on.
        *
        * @param string ... One or more field names which are searchable
        */
        function setSearchableFields()
        {
            $args = func_get_args();

            $this->setConfig('searchableFields', $args);
        }


        /**
        * Sets the display name of given fields. Arg should be an
        * array of fieldname/displayname combos.
        *
        * @param array $arr Associative array of display names. Key should be
        *                   the field name, value should be the display/friendly name
        */
        function setDisplayNames($arr)
        {
            if (!empty($arr) AND is_array($arr)) {
                foreach ($arr as $k => $v) {
                    if (!empty($this->fields[$k])) {
                        $this->fields[$k]['display'] = $v;
                    }
                }
            }
        }


        /**
        * Sets the values from the given SQL query. Query should return
        * two columns - the first being the value that is set in this
        * tables column, the second being the value that is shown to the
        * user. Commonly used for foreign keys.
        *
        * @param string $field Name of field
        * @param string $sql   SQL query to perform
        */
        function setValuesFromQuery($field, $sql)
        {
            if (!empty($this->fields[$field])) {
                $this->fields[$field]['values'] = $this->dbGetAssoc($sql);
            }
        }


        /**
        * Sets the values from the given array. Array should be keyed by *actual* value,
        * and the value should be the *display* value. These can be the same.
        *
        * @param string $field Name of field
        * @param array  $arr   Associative array of values
        */
        function setValuesFromArray($field, $arr)
        {
            if (!empty($this->fields[$field])) {
                $this->fields[$field]['values'] = $arr;
            }
        }


        /**
        * Adds a table on which to join to to fetch more columns. These columns
        * can be used just as the others can. If you're adding things like filters
        * and/or validation callbacks, they should be added *after* this method has
        * been called. Adding join tables automatically disables add/copy/delete.
        *
        * @param string $table       The table to join to
        * @param string $mainCol     The column in the main table to use in the join clause
        * @param string $foreignCol  The column in the joined to table to use in the join clause.
        */
        function addJoinTable($table, $mainCol, $foreignCol)
        {
            $this->joinTables[] = array('table'       => $table,
                                        'maincol'     => $mainCol,
                                        'foreigncol'  => $foreignCol);

            $this->getStructure($table, false);

            $this->setConfig('allowAdd', false);
            $this->setConfig('allowCopy', false);
            $this->setConfig('allowDelete', false);
        }


        /**
        * Sets the input type for editing/adding. Possible types can be:
        *  o text
        *  o textarea
        *  o select
        *  o password - This is not the normal HTML password input type, this
        *               will cause the display of *two* password inputs, to
        *               facilitate confirmation. If the two entered are not
        *               identical, an error is displayed.
        *  o bitmask  - This is a pseudo field type which accomodates bitmask
        *               values. You'll need to use one of the setValuesFrom*()
        *               methods to provide a user friendly set of values which
        *               correspond to the bit values. This is presented as a
        *               multiple select on the add/edit pages.
        *
        * @param string $field Name of field
        * @param string $input Type of form input to use on add/edit pages
        */
        function setInputType($field, $input)
        {
            if (!empty($this->fields[$field])) {
                $this->fields[$field]['input'] = $input;
            }
        }


        /**
        * Allows not showing of certain fields
        *
        * @param string ... One or more field names to omit from display
        */
        function noDisplay()
        {
            $args = func_get_args();

            foreach ($args as $a) {
                if (isset($this->fields[$a])) {
                    $this->fields[$a]['noDisplay'] = true;
                }
            }
        }


        /**
        * Allows showing, but not editing of certain fields
        *
        * @param string ... One or more field names to omit from add/edit
        */
        function noEdit()
        {
            $args = func_get_args();

            foreach ($args as $a) {
                if (isset($this->fields[$a])) {
                    $this->fields[$a]['noEdit'] = true;
                }
            }
        }


        /**
        * Kind of the "opposite" to noDisplay(), this will set all columns to
        * not be displayed except those specified.
        *
        * @param string ... One or more fields which are to be displayed, all others
        *                   will be hidden
        */
        function onlyDisplay()
        {
            $args = func_get_args();

            foreach ($this->fields as $field => $v) {
                $this->fields[$field]['noDisplay'] = !in_array($field, $args);
            }
        }


        /**
        * Kind of the "opposite" to noEdit(), this will set all columns to
        * not be editable except those specified.
        *
        * @param string ... One or more fields which are to be editable, all others
        *                   will not be
        */
        function onlyEdit()
        {
            $args = func_get_args();

            foreach ($this->fields as $field => $v) {
                $this->fields[$field]['noEdit'] = !in_array($field, $args);
            }
        }


        /**
        * Adds a data validation callback. This is called when an add/edit/copy
        * is submitted. The callback must:
        *  o Accept two arguments: the first is the TableEditor object, and the
        *    second is the data to validate.
        *  o Return the value which is to be inserted into the database. This is
        *    to allow modification of data before insertion. You can of course
        *    return the supplied data untouched if you only wish to validate it.
        *  o Call the addError() method on the TableEditor object if an error
        *    occurs to register the error. The error should naturally be descriptive.
        *
        * @param string   $field    The field name to use with this callback
        * @param callback $callback A valid PHP callback
        */
        function addValidationCallback($field, $callback)
        {
            if (!empty($this->fields[$field]) AND empty($this->fields[$field]['noEdit'])) {
                $this->validationCallbacks[$field][] = $callback;
            }
        }


        /**
        * Adds data filter conditions. Allows only showing of certain rows.
        * Arguments should be valid MySQL WHERE clause for this table.
        *
        * @param string ... One or more SQL WHERE clause conditions.
        */
        function addDataFilter()
        {
            $args = func_get_args();

            foreach ($args as $a) {
                $this->dataFilters[] = $a;
            }
        }


        /**
        * Applys a filter to a field. Purely for display, not during add/edit.
        *
        * @param string   $field    Name of field
        * @param callback $callback PHP callback
        */
        function addDisplayFilter($field, $callback)
        {
            if (is_callable($callback) AND isset($this->fields[$field])) {
                $this->fields[$field]['filters'][] = $callback;

            } else if (is_callable($callback)) {
                $this->errors[] = "Unknown field: $field";

            } else {
                $this->errors[] = "Failed to add addition callback - not a valid PHP callback";
            }
        }


        /**
        * Adds an add callback. Gets called when a row is added. All
        * added data is passed as an array to the callback function.
        *
        * @param callback $callback The callback to be used
        */
        function addAdditionCallback($callback)
        {
            if (is_callable($callback)) {
                $this->addCallbacks[] = $callback;
            } else {
                $this->errors[] = "Failed to add addition callback - not a valid PHP callback";
            }
        }


        /**
        * Adds an edit callback. Gets called when a row is successfully edited. All
        * edited data is passed as an array to the callback function.
        *
        * @param callback $callback The callback to be used
        */
        function addEditCallback($callback)
        {
            if (is_callable($callback)) {
                $this->editCallbacks[] = $callback;
            } else {
                $this->errors[] = "Failed to add edit callback - not a valid PHP callback";
            }
        }


        /**
        * Adds a copy callback. Gets called when a row is successfully copied. All
        * newly inserted data is passed as an array to the callback function.
        *
        * @param callback $callback The callback to be used
        */
        function addCopyCallback($callback)
        {
            if (is_callable($callback)) {
                $this->copyCallbacks[] = $callback;
            } else {
                $this->errors[] = "Failed to add copy callback - not a valid PHP callback";
            }
        }


        /**
        * Adds an delete callback. Gets called when a row is deleted. All
        * row data is passed as an array to the callback function.
        *
        * @param callback $callback The callback to be used
        */
        function addDeleteCallback($callback)
        {
            if (is_callable($callback)) {
                $this->deleteCallbacks[] = $callback;
            } else {
                $this->errors[] = "Failed to add delete callback - not a valid PHP callback";
            }
        }


        /**
        * Works out the structure of the table
        *
        * @param string $table The name of the table to get the structure for
        * @param bool   $usepk Whether to use this tables primary key as the primary
        *                      key for the "row". Set to false when getting structure for
        *                      join tables.
        */
        function getStructure($table, $usepk = true)
        {
            $res = $this->dbGetAll("DESC {$table}");

            // For multi-column pks:
            // list(, $sql) = $this->dbGetRow("SHOW CREATE TABLE {$this->table}", DB_FETCHMODE_NUM);

            $basetypes = 'real|double|float|decimal|numeric|tinyint|smallint|mediumint|int|bigint|date|time|timestamp|datetime|char|varchar|tinytext|text|mediumtext|longtext|enum|set|tinyblob|blob|mediumblob|longblob';
            $extra     = 'unsigned|zerofill|binary|ascii|unicode| ';

            foreach ($res as $row) {

                preg_match("#^($basetypes)(\([^)]+\))?($extra)*$#i", $row['Type'], $matches);

                // What type is the field?
                switch ($matches[1]) {
                    case 'smalltext':
                    case 'mediumtext':
                    case 'text':
                    case 'longtext':
                        $this->addField($row['Field'], 'textarea');
                        break;

                    case 'enum':
                        $type   = substr($row['Type'], 6, -2);
                        $values = array_flip(preg_split("#','#", $type));

                        foreach ($values as $k => $v) {
                            $values[$k] = $k;
                        }

                        $this->addField($row['Field'], 'select', $values);
                        break;

                    case 'date':
                        $this->addField($row['Field'], 'date', null, date('Y-m-d'));
                        break;

                    case 'time':
                        $this->addField($row['Field'], 'time', null, date('H:i:s'));
                        break;

                    case 'datetime':
                        $this->addField($row['Field'], 'datetime', null, date('Y-m-d H:i:s'));
                        break;

                    default:
                        $this->addField($row['Field'], 'text');
                }

                // Look for primary key, if found, order by it by default
                if ($usepk AND $row['Key'] == 'PRI') {
                    $this->pk = $row['Field'];
                    $this->setDefaultOrderby($row['Field']);
                }
            }
        }


        /**
        * Adds a field to the list
        *
        * @param string $name      Name of the field
        * @param string $inputType Type of input to be used on add/edit page
        * @param array  $values    Preset values to display
        */
        function addField($name, $inputType, $values = null, $default = null)
        {
            $this->fields[$name] = array('display' => $name,
                                         'input'   => $inputType,
                                         'values'  => $values,
                                         'default' => $default);
        }


        /**
        * Substitutes actual values with the values in the fields
        * array (if any). Works on a single row of data.
        *
        * @param array &$row Row of data from the table
        */
        function parseResults(&$row)
        {
            foreach ($row as $field => $v) {
                if (!empty($this->fields[$field]['values'])) {

                    $values = $this->fields[$field]['values'];

                    // Must handle bitmasks initially
                    if ($this->fields[$field]['input'] == 'bitmask') {
                        $descs = array();
                        foreach ($values as $bit => $desc) {
                            if ($v & $bit) { // One ampersand only
                                $descs[]  = $desc;
                            }
                        }
                        $row[$field] = implode(', ', $descs);
                    }

                    if (isset($values[$v])) {
                        $row[$field] = $values[$v];
                    }
                }
            }
        }


        /**
        * Applys display filters to a single row of data. Does htmlspecialchars() first.
        *
        * @param array &$results Data from table
        */
        function applyDisplayFilters(&$row)
        {
            foreach ($row as $field => $value) {
                if (!empty($this->fields[$field]['filters'])) {
                    foreach ($this->fields[$field]['filters'] as $f) {
                        $value = call_user_func($f, $value);
                    }

                    $row[$field] = $value;
                }
            }
        }


        /**
        * Deletes the row with the given ID
        *
        * @param mixed $id ID of row to delete
        */
        function deleteRow($ids)
        {
            $ids       = array_map(array(&$this, 'dbQuote'), $ids);
            $ids       = implode(', ', $ids);
            $callbacks = !empty($this->deleteCallbacks);

            /**
            * Data filters
            */
            if (!empty($this->dataFilters)) {
                $filters = implode(' AND ', $this->dataFilters);
            } else {
                $filters = 1;
            }

            // Fetch the data for these row(s) so we can pass it over to any callback functions
            if ($callbacks) {
                $data = $this->dbGetAll("SELECT * FROM {$this->table} WHERE $filters AND {$this->pk} IN($ids)");
            }

            // Do the delete
            $result = (bool)$this->dbQuery("DELETE FROM {$this->table} WHERE $filters AND {$this->pk} IN($ids)");

            // Callbacks
            if ($result AND $callbacks) {
                foreach ($data as $row) {
                    foreach ($this->deleteCallbacks as $c) {
                        call_user_func($c, $row);
                    }
                }
            }

            return $result;
        }


        /**
        * Returns an array of the tables to be specified in the query,
        * and the join clause to use.
        */
        function getQueryTables()
        {
            $tables[]   = $this->table;
            $joinClause = array('1');

            if (!empty($this->joinTables)) {
                foreach ($this->joinTables as $jt) {
                    $tables[] = $jt['table'];
                    $joinClause[] = "{$jt['maincol']} = {$jt['foreigncol']}";
                }
            }

            return array(implode(', ', $tables), implode(' AND ', $joinClause));
        }
        
        
        /**
        * Returns an array of fields which are allowed to be displayed. Always
        * includes the primary key however, whether it's to be displayed or not.
        *
        * @return array Fields used in display
        */
        function getDisplayFields()
        {
            $fields = array();

            foreach ($this->fields as $field => $v) {
                if (empty($v['noDisplay']) OR $field == $this->pk) {
                    $fields[] = $field;
                }
            }
            
            return $fields;
        }


        /**
        * Displays the page
        */
        function display()
        {
            /**
            * Call a different function if we're editing/copying/adding a row.
            */
            if (isset($_GET['edit'])) {
                if ($this->getConfig('allowEdit')) {
                    $this->handleAddEditCopy($_GET['edit']);
                } else {
                    $this->errors[] = 'Editing rows is not permitted';
                }

            } else if (isset($_GET['copy'])) {
                if ($this->getConfig('allowCopy')) {
                    $this->handleAddEditCopy($_GET['copy']);
                } else {
                    $this->errors[] = 'Copying rows is not permitted';
                }

            } else if (!empty($_GET['add'])) {
                if ($this->getConfig('allowAdd')) {
                    return $this->handleAddEditCopy();
                } else {
                    $this->errors[] = 'Adding rows is not permitted';
                }
            }



            /**
            * Also call a different function if we're viewing a row
            */
            if (isset($_GET['view'])) {
                if ($this->getConfig('allowView')) {
                    $this->handleView($_GET['view']);
                } else {
                    $this->errors[] = 'Viewing rows is not permitted';
                }
            }



            /**
            * Handle a delete if necessary. Has to be here to allow the object
            * to be setup in the calling script (eg. custom values).
            */
            if (isset($_GET['delete'])) {
                if ($this->getConfig('allowDelete')) {
                    $result = $this->deleteRow($_GET['delete']);

                    if ($result) {
                        $url = new TableEditor_URL();
                        $url->removeQueryString('delete');

                        header('Location: ' . $url->getURL());
                        exit;
                    }

                    $this->errors[] = 'Failed to delete row!';

                } else {
                    $this->errors[] = 'Deleting rows is not permitted';
                }
            }
            
            
            
            /**
            * Handle displaying the advanced search page
            */
            if ($this->getConfig('allowASearch') AND !empty($_GET['asearch']) AND $_GET['asearch'] == '1') {
                $this->displayAdvancedSearchPage();
            
            } else if ($this->getConfig('allowASearch') AND !empty($_GET['asearch']) AND $_GET['asearch'] == '2' AND !empty($_GET['fields'])) {
                $searchClause = $this->handleAdvancedSearch();

                // Get URL for clear link
                $url = new TableEditor_URL();
                $url->addRawQueryString('');
                $clearURL = $url->getURL(true);

                // Get URL for modify link
                $url = new TableEditor_URL();
                $url->addQueryString('asearch', '1');
                $modifyURL = $url->getURL(true);
            }



            /**
            * Add htmlspecialchars() display filter. Has to be before search to prevent
            * search term highlighting being munged.
            */
            foreach ($this->fields as $field => $v) {
                if (empty($v['noDisplay'])) {
                    $this->addDisplayFilter($field, 'htmlspecialchars');
                }
            }



            /**
            * Handle searching
            */
            if (    count($this->getConfig('searchableFields')) > 0
                AND isset($_GET['search'])
                AND $_GET['search'] !== '') {

                $this->search = $_GET['search'];
                $searchStr    = $this->dbQuote('%' . $this->search . '%');
                $searchFields = $this->getConfig('searchableFields');
                $searchClause = array();

                foreach ($searchFields as $sf) {
                    $this->addDisplayFilter($sf, array(&$this, 'searchDisplayFilter'));

                    // Handle fields which have predefined value sets
                    if (!empty($this->fields[$sf]['values'])) {
                        foreach ($this->fields[$sf]['values'] as $k => $v) {
                            if (strpos(strtolower($v), strtolower($this->search)) !== false) {
                                $in[] = $this->dbQuote($k);
                            }
                        }

                        if (!empty($in)) {
                            $in = implode(', ', $in);
                            $searchClause[] = "$sf IN($in)";
                        }

                        continue;
                    }

                    $searchClause[] = "$sf LIKE $searchStr";
                }

                // If no resulting search clauses (feasible), set search clause to "0"
                if (!empty($searchClause)) {
                    $searchClause = implode(' OR ', $searchClause);

                } else {
                    $searchClause = '0';
                }

                // Get URL for clear link
                $url = new TableEditor_URL();
                $url->removeQueryString('search');
                $clearURL = $url->getURL(true);

            } else if (empty($searchClause)) {
                $searchClause = '1';
            }


            /**
            * Handle ordering
            */
            if (!empty($_GET['orderby']) AND preg_match('#^([a-z0-9_]+)(:desc)?$#i', $_GET['orderby'], $matches)) {
                $this->orderby = array('field' => $matches[1], 'direction' => (int)empty($matches[2]));
            }

            $orderbyClause = "ORDER BY {$this->orderby['field']}" . (!$this->orderby['direction'] ? ' DESC' : '');

            // Handle multiple instances of "orderby" on the query string; messy.
            if (count(explode('orderby', $_SERVER['QUERY_STRING'])) > 2) {
                $url = new TableEditor_URL();
                header('Location: ' . $url->getURL());
                exit;
            }



            /**
            * Handle data filters
            */
            if (!empty($this->dataFilters)) {
                $filters = implode(' AND ', $this->dataFilters);
            } else {
                $filters = 1;
            }

            /**
            * Setup which tables we're selecting from
            */
            list($tables, $joinClause) = $this->getQueryTables();


            /**
            * Get total rows
            */
            $total   = $this->dbGetOne("SELECT COUNT(*) FROM $tables WHERE $joinClause AND $filters AND ($searchClause)");
            $perPage = $this->config['perPage'];

            /**
            * Handle paging of results
            */
            $pager = new Pager_Sliding(array('totalItems' => $total,
                                             'delta'   => 5,
                                             'prevImg' => '<span class="nextBackLink">3</span>',
                                             'nextImg' => '<span class="nextBackLink">4</span>',
                                             'spacesBeforeSeparator' => '1',
                                             'spacesAfterSeparator' => '1',
                                             'curPageLinkClassName' => 'avgbold',
                                             'perPage' => $perPage));

            list($startOffset, $endOffset) = $pager->getOffsetByPageId();
            $startOffset--; // Eww - For SQL query

            list($back, $pages, $next)  = $pager->getLinks();


            /**
            * CSV handling - If downloading entire table as CSV, need to remove
            * the LIMIT information.
            */
            if (!empty($_GET['csvdownload']) AND $_GET['type'] == 'table') {
                $startOffset = 0;
                $perPage     = $total;
            }


            /**
            * Get data
            */
            $fields = $this->getDisplayFields();

            $fields  = implode(', ', $fields);
            $results = $this->dbGetAll($s = "SELECT $fields FROM $tables WHERE $joinClause AND $filters AND ($searchClause) $orderbyClause LIMIT $startOffset,$perPage");

            if ($results === false) {
                $this->errors[] = 'Error getting data. Database said: ' . $this->dbError();
            }


            /**
            * Allow for value substitution
            */
            if (!empty($results)) {
                foreach ($results as $k => $row) {
                    $this->parseResults($results[$k]);
                }

                // Necessary to allow searching and highlighting on primary key field
                $nonFilteredData = $results;

                /**
                * Apply display filters
                */
                foreach ($results as $k => $row) {
                    $this->applyDisplayFilters($results[$k]);
                }
            }


            /**
            * If a CSV download is required, do that instead of showing the table
            */
            if (!empty($_GET['csvdownload'])) {
                if ($this->getConfig('allowCSV')) {
                    $this->handleCsvDownload($nonFilteredData);
                
                } else {
                    $this->addError('CSV Download is not permitted');
                }
            }

            
            // Advanced Search
            $url = new TableEditor_URL();
            $url->addRawQueryString('asearch=1');
            $aSearchURL = $url->getURL();


            /**
            * Show the page in all it's wonderbar glory
            */
            $this->displayHeader();
?>
<table border="0" align="center">
    <tr>
        <td>&nbsp;</td>
        <td colspan="<?=count($this->fields)?>" align="center">
            Displaying [<?=($total > 0 ? $startOffset + 1 : 0)?> - <?=min($startOffset + $perPage, $total)?>] of <?=$total?> records
        </td>
    </tr>

    <tr>
        <td>&nbsp;</td>
        <td colspan="<?=count($this->fields) + 1?>" align="center">
            <?=$back?>
            <?=$pages?>
            <?=$next?>

            <?if($this->getConfig('searchableFields')):?>
                <div style="float: left; text-align: left">
                    <input type="text" value="<?=$this->search?>" id="searchInput" onkeypress="if (event.keyCode == 13) search()">&nbsp;
                    <button onclick="search()">Search &raquo;</button>&nbsp;<br>
                    
                    <?if($this->getConfig('allowASearch')):?>
                        <?if(!empty($_GET['asearch'])):?>
                            <i>Advanced Search: <a href="<?=$modifyURL?>">Modify</a> :: <a href="<?=$clearURL?>">Clear</a></i>
                        <?else:?>
                            <a href="<?=$aSearchURL?>"><i>Advanced Search</i></a>
                        <?endif?>
                        
                        <?if(isset($this->search)):?>::<?endif?>
                    <?endif?>

                    <?if(isset($this->search)):?>
                        <a href="<?=$clearURL?>"><i>Clear search</i></a>
                    <?endif?>
                </div>
            <?endif?>

            <div style="float: right; white-space: nowrap">
                <?$this->displayActionButtons()?>
            </div>
        </td>
    </tr>

    <tr>
        <td>&nbsp;</td>

        <?foreach($this->fields as $field => $f):?>
            <?if(empty($f['noDisplay'])):?>
                <th style="white-space: nowrap">
                    <a href="javascript: orderBy('<?=$field . ($this->orderby['field'] == $field && $this->orderby['direction'] == 1 ? ':desc' : '') ?>')"><?=$f['display']?></a><?if($this->orderby['field'] == $field):?><?=($this->orderby['direction'] == 1 ? '&nbsp;&uarr;' : '&nbsp;&darr;')?><?endif?>
                </th>
            <?endif?>
        <?endforeach?>
    </tr>

    <?if(!empty($results)):?>
        <?foreach($results as $k => $row):?>
            <tr <?=($k % 2 == 1 ? 'class="altRow"' : '')?> style="cursor: default" onclick="row_highlight(event, this, this.getElementsByTagName('input')[0], '<?=($k % 2 == 1 ? 'altRow' : '')?>')">
                <td>
                    <input type="checkbox"
                           id="rowSelector"
                           value="<?=$nonFilteredData[$k][$this->pk] // FIXME: May need htmlspecialchars when non auto_increment pkeys are implemented?>"
                           onclick="row_highlight(event, this.parentNode.parentNode, this, '<?=($k % 2 == 1 ? 'altRow' : '')?>')">
                </td>

                <?foreach($row as $field => $v):?>
                    <?if(empty($this->fields[$field]['noDisplay'])):?>
                        <td valign="top"><?=$v // Do not do htmlspecialchars here - it's now implemented as a display filter?></td>
                    <?endif?>
                <?endforeach?>
            </tr>
        <?endforeach?>

    <?else:?>

        <tr>
            <td colspan="<?=count($this->fields)?>" align="center">No data found!</td>
        </tr>
    <?endif?>

    <tr>
        <td>&nbsp;</td>
        <td colspan="<?=count($this->fields)?>">
            <div style="float: right">
                <?$this->displayActionButtons()?>
            </div>
        </td>
    </tr>

    <tr>
        <td>&nbsp;</td>
        <td colspan="<?=count($this->fields)?>" align="center">
            <?=$back?>
            <?=$pages?>
            <?=$next?>
        </td>
    </tr>
</table>

<?php

            $this->displayFooter();
        }


        /**
        * Displays action buttons (view/add/edit/delete)
        */
        function displayActionButtons()
        {
            if ($this->getConfig('allowView'))   echo '<button onclick="row_view()" class="actionButton">View</button>&nbsp;';
            if ($this->getConfig('allowCSV'))    echo '<button onclick="event.cancelBubble = true; Fade(document.getElementById(\'csvDownloadLayer\'), true); document.body.scrollTop = 0" class="actionButton" id="actionCSV">CSV</button>&nbsp;';
            if ($this->getConfig('allowAdd'))    echo '<button onclick="row_add()" class="actionButton">Add</button>&nbsp;';
            if ($this->getConfig('allowEdit'))   echo '<button onclick="row_edit()" class="actionButton">Edit</button>&nbsp;';
            if ($this->getConfig('allowCopy'))   echo '<button onclick="row_copy()" class="actionButton">Copy</button>&nbsp;';
            if ($this->getConfig('allowDelete')) echo '<button onclick="row_delete()" class="actionButton">Delete</button>';
        }


        /**
        * Produces a CSV for download
        */
        function handleCsvDownload($data)
        {
            // CSV CRLF
            define('CSV_CRLF', "\r\n", true);
            $csvEscapeFunc = $this->getConfig('csvEscapeFunc');

            //header('Content-Type: text/csv');
            switch ($_GET['type']) {
                case 'selected':
                    if (!empty($_GET['rows'])) {
                        foreach ($data as $k => $v) {
                            if (!in_array($v[$this->pk], $_GET['rows'])) {
                                unset($data[$k]);
                            }
                        }
                        
                        $data = array_values($data);
                    }
                    break;


                case 'table':
                    // Nothing to do here
                    break;


                default:
                    $url = new TableEditor_URL();
                    $url->removeQueryString('csvdownload');
                    $url->removeQueryString('type');
                    $url->removeQueryString('headers');
                    $url->removeQueryString('rows');
                    header('Location: ' . $url->getURL());
                    exit;
            }
            
            // Content type
            header('Content-Type: text/csv');

            /**
            * Display headers?
            */
            if (!empty($_GET['headers'])) {
                foreach (array_keys($data[0]) as $field) {
                    if (empty($this->fields[$field]['noDisplay'])) {
                        $headers[] = $this->fields[$field]['display'];
                    }
                }
                
                echo implode(',', $headers) . CSV_CRLF;
            }


            /**
            * Dump Data
            */
            foreach ($data as $row) {
                $csvRow = array();
                foreach ($row as $k => $v) {
                    if ($k == $this->pk AND $this->fields[$k]['noDisplay']) {
                        continue;
                    }
                    
                    $csvRow[] = call_user_func($csvEscapeFunc, $v);
                }
                
                echo implode(',', $csvRow) . CSV_CRLF;
            }
            exit;
        }
        
        
        /**
        * Escapes a bit of data for use in a CSV file. Can be overridden by using the
        * config parameter csvEscapeFunc.
        *
        * @param  string $data Data to escape
        * @return string       Escaped data
        */
        function csvEscapeData($data)
        {
            return strtr($data, array(',' => '\,', "\r" => '\r', "\n" => '\n'));
        }


        /**
        * Shows the advanced search page
        */
        function displayAdvancedSearchPage()
        {
            $url = new TableEditor_URL();
            $url->addQueryString('asearch', '2');
            $searchURL = $url->getURL(true);
            
            $url->addRawQueryString('');
            $cancelURL = $url->getURL();
            
            $searchFields = $this->getConfig('searchableFields');

            // No searching permitted
            if (empty($searchFields)) {
                $url->removeQueryString('asearch');
                header('Location: ' . $url->getURL());
                exit;
            }

            // Define the various operators
            $operators[] = array('value' => '%',  'text' => 'Contains');
            $operators[] = array('value' => '=',  'text' => 'Matches Exactly');
            $operators[] = array('value' => '>',  'text' => 'Greater Than');
            $operators[] = array('value' => '>=', 'text' => 'Greater Than or Equal to');
            $operators[] = array('value' => '<',  'text' => 'Less Than');
            $operators[] = array('value' => '<=', 'text' => 'Less Than or Equal to');

            // Check querystring for potential search modifications
            $criteria = array();
            
            if (!empty($_GET['fields'])) {
                foreach ($_GET['fields'] as $i => $f) {
                    $criteria[] = array('field' => $f, 'operator' => $_GET['operators'][$i], 'value' => $_GET['values'][$i]);
                }
            } else {
                $criteria[] = array('field' => '', 'operator' => '', 'value' => '');
            }

            $this->displayHeader();
?>
<script language="javascript" type="text/javascript">
<!--
    /**
    * Adds an extra criteria row to the search form
    */
    function addCriteria()
    {
        var tableObj = document.getElementById('searchCriteriaTable');
        var trObj    = document.getElementById('searchCriteriaRow');
        var lastRow  = document.getElementById('searchCriteriaTable_lastRow');

        // Insert new row
        var insertedRow = lastRow.parentNode.insertBefore(trObj.cloneNode(true), lastRow);
        
        // Lose the button from the top row
        var buttonObj = trObj.getElementsByTagName('button')[0];
        buttonObj.parentNode.removeChild(buttonObj);
        
        // Move the id
        trObj.id = '';
        insertedRow.id = 'searchCriteriaRow';
        
        // Reset values on the newly inserted row (needed when modifying a search)
        inputs = insertedRow.getElementsByTagName('input');
        inputs[0].value = '';
        
        selects = insertedRow.getElementsByTagName('select');
        selects[0].selectedIndex = 0;
        selects[1].selectedIndex = 0;

        return false;
    }


    /**
    * Performs the search
    */
    function search()
    {
        var selects   = document.getElementsByTagName('select');
        var inputs    = document.getElementsByTagName('input');
        var fields    = [];
        var operators = [];
        var values    = [];


        // Separate field names from operators
        for (var i=0; i<selects.length; ++i) {
            if (selects[i].name.substr(0, 5) == 'field') {
                fields[fields.length] = selects[i];
            
            } else if (selects[i].name.substr(0, 8) == 'operator') {
                operators[operators.length] = selects[i];
            }
        }
        
        // Separate out values from all inputs
        for (var i=0; i<inputs.length; ++i) {
            if (inputs[i].name.substr(0, 5) == 'value') {
                values[values.length] = inputs[i];
            }
        }


        /**
        * Now construct the url
        */
        var parameters = [];

        for (i=0; i<fields.length; ++i) {
            var f_val = fields[i].options[fields[i].selectedIndex].value; // Field value
            var o_val = operators[i].options[operators[i].selectedIndex].value; // Operator value
            var v_val = values[i].value; // Value value
            
            if (f_val) {
                //  "Contains" must have a non-empty v_val
                if (o_val == '%' && v_val == '') {
                    alert('When using the "Contains" operator, you must enter some text to search for');
                    return;
                }
                
                parameters[parameters.length] = 'fields[]=' + encodeURIComponent(f_val) + '&operators[]=' + encodeURIComponent(o_val) + '&values[]=' + encodeURIComponent(v_val);
            }
        }
        
        if (parameters.length == 0) {
            alert('Please enter some search criteria!');
            return;
        }
        
        
        // Add the match type to the parameters array
        if (document.getElementById('match_any').checked) {
            parameters[parameters.length] = 'match=any';
        } else {
            parameters[parameters.length] = 'match=all';
        }

        location.href = '<?=$searchURL?>&' + parameters.join('&');
    }
// -->
</script>

<h2>Advanced Search</h2>

<table border="0" id="searchCriteriaTable">
    <?foreach($criteria as $i => $c):?>
        <tr <?if($i == count($criteria) - 1):?>id="searchCriteriaRow"<?endif?> >
            <td>
                <?if($i == count($criteria) - 1):?>
                    <button onclick="addCriteria()">Add Criteria &raquo;</button>
                <?endif?>
            </td>
    
            <td>
                <select name="field[]">
                    <option value="">Select...</option>
                    <?foreach($searchFields as $sf):?>
                        <option value="<?=$sf?>" <?=($sf == $c['field'] ? 'selected' : '')?> ><?=$this->fields[$sf]['display']?></option>
                    <?endforeach?>
                </select>
            </td>
    
            <td>
                <select name="operator[]">
                    <?foreach($operators as $o):?>
                        <option value="<?=$o['value']?>" <?=($o['value'] == $c['operator'] ? 'selected': '')?> ><?=$o['text']?></option>
                    <?endforeach?>
                </select>
            </td>
    
            <td>
                <input type="text" name="value[]" value="<?=htmlspecialchars($c['value'])?>">
            </td>
        </tr>
    <?endforeach?>

    <tr id="searchCriteriaTable_lastRow">
        <td align="right" valign="top" colspan="2">
            Match:
        </td>
        
        <td>
            <input type="radio" name="match" value="any" id="match_any" <?=(!isset($_GET['match']) || $_GET['match'] == 'any' ? 'checked' : '')?> > <label for="match_any">Any Criteria</label><br>
            <input type="radio" name="match" value="all" id="match_all" <?=(isset($_GET['match']) && $_GET['match'] == 'all' ? 'checked' : '')?> > <label for="match_all">All Criteria</label>
        </td>
        
        <td valign="top" align="right">
            <button onclick="location.href = '<?=$cancelURL?>'">Cancel</button>&nbsp;
            <button onclick="search()">Search &raquo;</button>
        </td>
    </tr>
</table>

<script language="javascript" type="text/javascript">
<!--
    addCriteria();
    addCriteria();
// -->
</script>

<?php
            $this->displayFooter();
            exit;
        }
        
        
        /**
        * Handles Advanced Searching
        *
        * @return string The SQL search WHERE clause
        */
        function handleAdvancedSearch()
        {
            if (is_array($_GET['fields'])) {
                
                $clauses = array();
                
                foreach ($_GET['fields'] as $i => $f) {
                    if (!in_array($f, $this->getConfig('searchableFields'))) {
                        $this->errors[] = 'Invalid field found in search criteria';
                        continue;
                    }

                    $f = preg_replace('#[^a-z0-9_]#i', '', $f);
                    $v = is_numeric($_GET['values'][$i]) ? $_GET['values'][$i] : $this->dbQuote($_GET['values'][$i]);
                    
                    switch ($_GET['operators'][$i]) {
                        case '%':
                            // Insert % at start and end
                            if (!is_numeric($v)) {
                                $v = "'%" . substr($v, 1, -1) . "%'";
                            } else {
                                $v = "'%" . $v . "%'";
                            }
                            
                            $o = 'LIKE';
                            break;

                        case '>':  $o = '>';  break;
                        case '>=': $o = '>='; break;
                        case '<':  $o = '<';  break;
                        case '<=': $o = '<='; break;
                        default:   $o = '=';  break;
                    }
                    
                    $clauses[] = "$f $o $v";
                }

                if (!empty($clauses)) {
                    $searchClause = implode($_GET['match'] == 'any' ? ' OR ' : ' AND ', $clauses);
                    return $searchClause;
                }
            }
            
            return '1';
        }


        /**
        * Handles viewing a row
        */
        function handleView($id)
        {
            $quotedId = $this->dbQuote($id);

            foreach ($this->fields as $f => $v) {
                if (empty($v['noDisplay'])) {
                    $fields[] = $f;
                }
            }

            /**
            * Data filters
            */
            if (!empty($this->dataFilters)) {
                $filters = implode(' AND ', $this->dataFilters);
            } else {
                $filters = 1;
            }


            $fields = implode(', ', $fields);
            list($tables, $joinClause) = $this->getQueryTables();

            $row = $this->dbGetRow("SELECT $fields FROM $tables WHERE $joinClause AND $filters AND {$this->pk} = $quotedId");

            if ($row === false) {
                $this->errors[] = 'Failed to find specified row';
                return;
            }

            $this->parseResults($row);

            /**
            * OK and Edit button URLs
            */
            $url = new TableEditor_URL();
            $url->removeQueryString('view');

            $okURL = $url->getURL(true);

            $url->addQueryString('edit', $id);
            $editURL = $url->getURL(true);

            $this->displayHeader();
?>
<table>
    <?foreach($row as $field => $value):?>
        <tr>
            <th><?=$this->fields[$field]['display']?></th>

            <td>
                <?=nl2br(htmlspecialchars($value))?>
            </td>
        </tr>
    <?endforeach?>

    <tr>
        <td colspan="2" align="right">
            <button class="actionButton" onclick="location.href = '<?=$okURL?>'">OK</button>&nbsp;
            
            <?if($this->getConfig('allowEdit')):?>
                <button class="actionButton" onclick="location.href = '<?=$editURL?>'">Edit</button>
            <?endif?>
        </td>
    </tr>
</table>
<?php
            $this->displayFooter();
            exit;
        }


        /**
        * Handles an add/edit page
        *
        * @param mixed $id Optional ID of row to edit
        */
        function handleAddEditCopy($id = null)
        {
            // Quote ID
            if (!is_null($id)) {
                $id = $this->dbQuote($id);
            }

            // Form posted back
            if (!empty($_POST)) {

                // Cancel button
                if ($_POST['action'] == 'Cancel') {
                    $url = new TableEditor_URL();
                    $url->removeQueryString('edit');
                    $url->removeQueryString('add');
                    $url->removeQueryString('copy');

                    header('Location: ' . $url->getURL());
                    exit;
                }


                // OK or Apply button
                $useFunctions = $this->getConfig('useFunctions');

                // Get fields which are "editable"
                foreach ($this->fields as $field => $value) {
                    if (   (!empty($value['noEdit']) AND !isset($value['default']))
                        OR ($field == $this->pk AND !$this->getConfig('allowPKEditing')) ) {
                        continue;
                    }


                    /**
                    * Handle default values for none editable fields
                    */
                    if (!empty($value['noEdit']) AND isset($value['default'])) {
                        $unQuoted[$field] = $value['default'];
                        $quoted[$field]   = $this->dbQuote($value['default']);
                        continue;
                    }


                    /**
                    * Handle functions
                    */
                    if ($useFunctions) {
                        $function = $_POST['function'][$field];
                        if (!empty($function) AND !empty($this->config['functions'][$function])) {
                            $_POST[$field] = call_user_func($this->config['functions'][$function], $_POST[$field]);
                        }
                    }


                    /**
                    * Handle required fields
                    */
                    if (    !empty($this->fields[$field]['required'])
                        AND ($_POST[$field] === '' OR !isset($_POST[$field]))) {

                        $this->setContextualError($field, "{$this->fields[$field]['display']} is required");
                    }


                    /**
                    * Validate input based on field types
                    */
                    switch ($this->fields[$field]['input']) {
                        case 'password':
                            if (!empty($_POST[$field . '_blank'])) {
                                // Not much to do really

                            } else if (empty($_POST[$field]) AND empty($_POST[$field . '_confirm'])) {
                                continue 2;

                            } else if ($_POST[$field] != $_POST[$field . '_confirm']) {
                                $this->setContextualError($field, 'Passwords entered did not match');
                            }
                            break;

                        case 'email':
                            $regex = "/^([*+!.&#$|'\\%\/0-9a-z^_`{}=?~:-]+)@(([0-9a-z-]+\.)+[0-9a-z]{2,4})$/i";

                            if (!empty($_POST[$field]) AND !preg_match($regex, $_POST[$field])) {
                                $this->setContextualError($field, "Not a valid email address");
                            }
                            break;

                        case 'bitmask':
                            $v = 0;
                            if (!empty($_POST[$field])) {
                                foreach ($_POST[$field] as $bit) {
                                    $v |= $bit;
                                }
                            }
                            $_POST[$field] = $v;
                            break;
                    }


                    /**
                    * Handle validation callbacks
                    */
                    if (!empty($this->validationCallbacks[$field])) {
                        foreach ($this->validationCallbacks[$field] as $c) {
                            $_POST[$field] = call_user_func($c, $this, $_POST[$field]);
                        }
                    }


                    /**
                    * Add the input to the collected data arrays
                    */
                    $unQuoted[$field] = $_POST[$field];
                    $quoted[$field]   = $this->dbQuote($_POST[$field]);


                    /**
                    * Add to list of fields
                    */
                    $fields[] = $field;
                }


                /**
                * If there are any errors, show the page again
                */

                if (!empty($this->errors) OR !empty($this->contextErrors)) {
                    $this->displayAddEditCopyPage($id); // Doesn't return
                }


                /**
                * Create the SET ... part of the sql query
                */
                foreach ($fields as $f) {
                    $sets[] = "$f = {$quoted[$f]}";
                }
                $sets = implode(', ', $sets);


                /**
                * Edit specific
                */
                if (isset($_GET['edit'])) {

                    /**
                    * Data filters (just in case)
                    */
                    if (!empty($this->dataFilters)) {
                        $filters = implode(' AND ', $this->dataFilters);
                    } else {
                        $filters = 1;
                    }

                    list($tables, $joinClause) = $this->getQueryTables();

                    $sql = "UPDATE $tables SET $sets WHERE $joinClause AND $filters AND {$this->pk} = $id";
                    $res = $this->dbQuery($sql);

                    if (!$res) {
                        $this->errors[] = "Failed to update row: " . $this->dbError();

                    } else {
                        // Run edit callbacks
                        if (!empty($this->editCallbacks)) {
                            foreach ($this->editCallbacks as $c) {
                                call_user_func($c, $unQuoted);
                            }
                        }
                    }


                /**
                * Add/Copy specific
                */
                } else if (!empty($_GET['add']) OR isset($_GET['copy'])) {
                    $sql = "INSERT INTO {$this->table} SET $sets";
                    $res = $this->dbQuery($sql);

                    if (!$res) {
                        $this->errors[] = "Failed to add row: " . $this->dbError();
                    } else {

                        // FIXME: Need to take into account non auto_increment primary keys
                        $id = $this->dbGetOne("SELECT LAST_INSERT_ID()");

                        if (!empty($_GET['add'])) {
                            // Run addition callbacks
                            if (!empty($this->addCallbacks)) {
                                foreach ($this->addCallbacks as $c) {
                                    call_user_func($c, $unQuoted);
                                }
                            }

                        } else if (isset($_GET['copy'])) {
                            // Run copy callbacks
                            if (!empty($this->copyCallbacks)) {
                                foreach ($this->copyCallbacks as $c) {
                                    call_user_func($c, $unQuoted);
                                }
                            }
                        }
                    }
                }


                /**
                * Check for errors. If none, redirect if OK was pressed, otherwise
                * redirect back to edit page if Apply was pressed.
                */
                if (empty($this->errors)) {
                    if ($_POST['action'] == 'OK') {
                        $url = new TableEditor_URL();
                        $url->removeQueryString('edit');
                        $url->removeQueryString('add');
                        $url->removeQueryString('copy');
                        header('Location: ' . $url->getURL());
                        exit;

                    } else if ($_POST['action'] == 'Apply') {
                        $url = new TableEditor_URL();

                        // Change to edit if this was an addition
                        if (!empty($_GET['add']) OR isset($_GET['copy'])) {
                            $url->removeQueryString('add');
                            $url->removeQueryString('copy');
                            $url->addQueryString('edit', $id);
                        }
                        header('Location: ' . $url->getURL());
                        exit;
                    }
                }
            }

            $this->displayAddEditCopyPage($id);
        }


        /**
        * Called when a row is to be edited
        *
        * @param mixed $id Optional ID of row to edit
        */
        function displayAddEditCopyPage($id) // $id is already SQL ready
        {
            foreach (array_keys($this->fields) as $field) {
                if (empty($this->fields[$field]['noEdit'])) {
                    $fields[] = $field;
                }
            }

            // Edit/copy specific
            if (isset($_GET['edit']) OR isset($_GET['copy'])) {

                /**
                * Data filters
                */
                if (!empty($this->dataFilters)) {
                    $filters = implode(' AND ', $this->dataFilters);
                } else {
                    $filters = 1;
                }

                $fields = implode(', ', $fields);
                list($tables, $joinClause) = $this->getQueryTables();

                // Get row data
                $row = $this->dbGetRow("SELECT $fields FROM $tables WHERE $joinClause AND $filters AND {$this->pk} = $id");

                if ($row === false) {
                    $this->errors[] = 'Failed to find specified row in database';
                    return;
                }

                // If copying, nuke the primary key so we don't get conflicts on insert
                if (isset($_GET['copy'])) {
                    $row[$this->pk] = '0';
                }

                $title = isset($_GET['edit']) ? 'Edit' : 'Copy';

            // Add specific
            } else {
                $row = array_flip($fields);
                foreach ($row as $k => $v) {
                    $row[$k] = isset($this->fields[$k]['default']) ? $this->fields[$k]['default'] : null;
                }

                $title = 'Add';
            }

            /**
            * Use the posted data if we're displaying an error
            */
            if ((!empty($this->errors) OR !empty($this->contextErrors)) AND !empty($_POST)) {
                foreach ($row as $k => $v) {
                    if (isset($_POST[$k])) {
                        $row[$k] = $_POST[$k];
                    }
                }
            }

            $url = new TableEditor_URL();
            $actionURL = $url->getURL(true);

            $this->displayHeader();
?>
<h2><?=$title?> Row</h2>

<form action="<?=$actionURL?>" method="post">

<table border="0">
    <?if($row):?>
        <?foreach($row as $field => $value):?>
            <tr>
                <th><?=(!empty($this->fields[$field]['required']) ? '<span class="requiredAsterisk">*</span>' : '')?> <?=$this->fields[$field]['display']?></th>

                <?if($this->config['useFunctions']):?>
                    <td valign="top">
                        <select name="function[<?=$field?>]" onchange="enableApply()">
                            <option></option>
                            <?foreach(array_keys($this->config['functions']) as $f):?>
                                <option value="<?=$f?>"><?=$f?></option>
                            <?endforeach?>
                        </select>
                    </td>
                <?endif?>

                <td>
                    <?php
                        switch ($this->fields[$field]['input']) {
                            case 'textarea':
                                printf('<textarea name="%s" cols="50" rows="12" onkeyup="enableApply()" %s>%s</textarea>',
                                       htmlspecialchars($field),
                                       $field == $this->pk && !$this->getConfig('allowPKEditing') ? 'disabled': '',
                                       htmlspecialchars($value));
                                break;

                            case 'select':
                                printf('<select name="%s" %s onchange="enableApply()"><option value="">Select...</option>',
                                       htmlspecialchars($field),
                                       $field == $this->pk && !$this->getConfig('allowPKEditing') ? 'disabled': '');

                                // Print option tags
                                foreach ($this->fields[$field]['values'] as $k => $v) {
                                    printf('<option value="%s" %s>%s</option>',
                                           htmlspecialchars($k),
                                           (string)$k === $value ? 'selected' : '',
                                           htmlspecialchars($v));
                                }

                                echo '</select>';
                                break;

                            case 'bitmask':
                                printf('<select name="%s[]" %s onchange="enableApply()" size="7" multiple>',
                                       htmlspecialchars($field),
                                       $field == $this->pk && !$this->getConfig('allowPKEditing') ? 'disabled': '');

                                // Print option tags
                                foreach ($this->fields[$field]['values'] as $k => $v) {
                                    printf("<option value=\"%s\" %s>%s</option>\n",
                                           htmlspecialchars($k),
                                           $k & $value ? 'selected' : '',
                                           htmlspecialchars($v));
                                }

                                echo '</select>';
                                break;

                            case 'date':
                                printf('<input type="text" name="%s" value="%s" onkeyup="enableApply()" %s> <a href="javascript: void(document.forms[0].elements[\'%s\'].value = currentDate())" onclick="enableApply()" title="Click to set current date">Now</a>',
                                       htmlspecialchars($field),
                                       htmlspecialchars($value),
                                       $field == $this->pk && !$this->getConfig('allowPKEditing') ? 'disabled': '',
                                       htmlspecialchars($field));
                                break;

                            case 'time':
                                printf('<input type="text" name="%s" value="%s" onkeyup="enableApply()" %s> <a href="javascript: void(document.forms[0].elements[\'%s\'].value = currentTime())" onclick="enableApply()" title="Click to set current time">Now</a>',
                                       htmlspecialchars($field),
                                       htmlspecialchars($value),
                                       $field == $this->pk && !$this->getConfig('allowPKEditing') ? 'disabled': '',
                                       htmlspecialchars($field));
                                break;

                            case 'datetime':
                                printf('<input type="text" name="%s" value="%s" onkeyup="enableApply()" %s> <a href="javascript: void(document.forms[0].elements[\'%s\'].value = currentDateTime())" onclick="enableApply()" title="Click to set current date and time">Now</a>',
                                       htmlspecialchars($field),
                                       htmlspecialchars($value),
                                       $field == $this->pk && !$this->getConfig('allowPKEditing') ? 'disabled': '',
                                       htmlspecialchars($field));
                                break;

                            case 'password':
                                printf('<input type="password" name="%s" onkeyup="enableApply()"><br><input type="password" name="%s_confirm" onkeyup="enableApply()"> <i>(confirm)</i><br><input type="checkbox" value="1" name="%s_blank" id="%s_blank"> <label for="%s_blank">Set blank password?</label>',
                                       htmlspecialchars($field),
                                       htmlspecialchars($field),
                                       htmlspecialchars($field),
                                       htmlspecialchars($field),
                                       htmlspecialchars($field));
                                break;

                            case 'text': // Technically not need, but here for clarity
                            default:
                                printf('<input type="text" name="%s" value="%s" onkeyup="enableApply()" %s>',
                                       htmlspecialchars($field),
                                       htmlspecialchars($value),
                                       $field == $this->pk && !$this->getConfig('allowPKEditing') ? 'disabled': '');
                                break;
                        }

                        if (!empty($this->contextErrors[$field])) {
                            printf('<br><span class="contextError">%s</span>', $this->contextErrors[$field]);
                        }
                    ?>

                </td>
            </tr>
        <?endforeach?>
    <?endif?>

    <tr>
        <td colspan="3">
            <span class="requiredAsterisk">*</span> Required fields
        </td>
    </tr>

    <tr>
        <td colspan="3" align="right">
            <input type="submit" name="action" style="width: 65px" value="OK">
            <input type="submit" name="action" style="width: 65px" value="Cancel">
            <input type="submit" name="action" style="width: 65px" value="Apply" disabled>
        </td>
    </tr>
</table>

</form>

<?php
            $this->displayFooter();
            exit;
        }


        /**
        * Displays the page header
        */
        function displayHeader()
        {
            $headerfile = $this->getConfig('headerfile');
            if ($headerfile) {
                require($headerfile);
                return;
            }
?>
<html>
<head>
    <title><?=$this->getConfig('title')?></title>
    <style type="text/css">
    <!--
        body,
        table {
            font-family: Verdana;
            font-size: 10pt;
            margin: 0px;
        }

        th {
            background-color: #dedede;
            border: #aaaaaa 1px solid;
            text-align: left;
            vertical-align: top;
            padding: 2px;
            padding-left: 10px;
            padding-right: 10px;
            white-space: nowrap;
        }

        .altRow {
            background-color: #eeeeee;
        }

        .highlightedRow {
            background-color: orange;
        }

        .error {
            background-color: #dddddd;
            color: red;
            border: 1px dotted #aaaaaa;
            padding: 2px;
            padding-left: 10px;
            margin-bottom: 5px;
            font-style: italic;
        }

        .nextBackLink,
        .ascDescIndicator {
            font-family: webdings;
            font-size: 12pt;
            text-decoration: none;
        }

        .actionButton {
            width: 65px;
        }

        .headerBar {
            background-color: orange;
            border-bottom: 3px solid #777777;
            text-align: right;
            font-size: 24pt;
            font-family: Arial;
            font-style: italic;
            height: 50px;
            padding-top: 5px;
            padding-right: 10px;
            margin-bottom: 20px;
        }

        .mainbody {
            margin-left: 10px;
            margin-right: 10px;
        }

        .copyright {
            text-align: right;
            font-size: 8pt;
        }

        .contextError,
        .requiredAsterisk,
        .searchHighlight {
            font-weight: bold;
            color: red;
        }

        fieldset {
            padding: 10px;
            padding-top: 0px;
        }

        legend {
            font-weight: bold;
        }
        
        #csvDownloadLayer {
            background-color: #d4d0c8;
            padding: 5px;
            border: 2px white outset;
            position: absolute;
            visibility: hidden;
        }
    // -->
    </style>

    <link rel="stylesheet" href="./style.css">

    <script language="javascript" type="text/javascript">
    <!--
        /**
        * Gets left coord of given element
        */
        function GetLeft(element)
        {
            var curNode = element;
            var left    = 0;
    
            do {
                left += curNode.offsetLeft;
                curNode = curNode.offsetParent;
    
            } while(curNode.tagName.toLowerCase() != 'body');
    
            return left;
        }
        
        
        /**
        * Gets top coord of given element
        */
        function GetTop(element)
        {
            var curNode = element;
            var top    = 0;
    
            do {
                top += curNode.offsetTop;
                curNode = curNode.offsetParent;
    
            } while(curNode.tagName.toLowerCase() != 'body');
    
            return top;
        }


        /**
        * Onload event handler
        */
        function onload_handler()
        {
            if (document.getElementById('csvDownloadLayer') && document.getElementById('actionCSV')) {
                positionCSVLayer();
                document.getElementById('csvDownloadLayer').style.visibility = 'hidden';
                
                document.onclick = function ()
                {
                    Fade(document.getElementById('csvDownloadLayer'), false);
                }
            }
        }
        
        
        /**
        * Creates the CSV download layer
        */
        function positionCSVLayer()
        {
            /**
            * Positions the CSV download layer
            */
            var csvDiv        = document.getElementById('csvDownloadLayer');
            csvDiv.style.left = GetLeft(document.getElementById('actionCSV')) + 'px';
            csvDiv.style.top  = GetTop(document.getElementById('actionCSV')) + 1 + document.getElementById('actionCSV').offsetHeight + 'px';
        }


        /**
        * Returns ids of rows which are highlighted
        */
        function getSelectedRows()
        {
            var checkboxes = document.getElementsByTagName('input');
            var selected   = new Array();

            for (var i=0; i<checkboxes.length; ++i) {
                if (   checkboxes[i].getAttribute('type') == 'checkbox'
                    && checkboxes[i].getAttribute('id') == 'rowSelector'
                    && checkboxes[i].checked) {

                   selected[selected.length] = checkboxes[i].value;
                }
            }
            
            return selected;
        }


        /**
        * Initiates a CSV download
        */
        function csv_download()
        {
            var selectObj  = document.getElementById('csvdownload_what');
            var incHeaders = document.getElementById('include_headers').checked ? '1' : '0';
            
            switch (selectObj.options[selectObj.selectedIndex].value) {
            
                // Download selected rows as CSV
                case 'selected':
                    var selectedRows = getSelectedRows();
                    
                    if (selectedRows.length == 0) {
                        alert('Please select some rows to download!');
                        return;
                    }
                    
                    for (var i=0; i<selectedRows.length; ++i) {
                        selectedRows[i] = 'rows[]=' + selectedRows[i];
                    }
                    
                    var rows = selectedRows.join('&');
                    
                    location.href = location.href + (location.search.length ? '&' : '?') + 'csvdownload=1&type=selected&headers=' + incHeaders + '&' + rows;
                    break;


                // Download current page as CSV
                case 'page':
                    var checkboxes = document.getElementsByTagName('input');
                    var rows       = new Array();
        
                    for (var i=0; i<checkboxes.length; ++i) {
                        if (   checkboxes[i].getAttribute('type') == 'checkbox'
                            && checkboxes[i].getAttribute('id') == 'rowSelector') {
        
                            rows[rows.length] = 'rows[]=' + checkboxes[i].value;
                        }
                    }
                    
                    rows = rows.join('&');
                    location.href = location.href + (location.search.length ? '&' : '?') + 'csvdownload=1&type=selected&headers=' + incHeaders + '&' + rows; // type as selected is correct
                    break;


                // Download entire table as csv
                case 'table':
                    location.href = location.href + (location.search.length ? '&' : '?') + 'csvdownload=1&type=table&headers=' + incHeaders;
                    break;

                default:
                    alert('Please select which rows to download!');
                    break;
            }
            
            Fade(document.getElementById('csvDownloadLayer'), false);
        }


        /**
        * Handles row highlighting
        */
        // FIXME: Broken in FF
        /*
        function deleteCheckboxClicked(checkbox) {
              el = checkbox.parentNode;
              while (el && el.nodeName != "TR") {
                el = el.parentNode;
              }
              if (el && el.nodeName == "TR") {
                if (checkbox.checked) {
                  el.oldClassName = el.className;
                  el.className = "delete";
                } else {
                  el.className = el.oldClassName;
                  el.oldClassName = "";
                }
              }
            }
        */
        function row_highlight(event, trObj, checkboxObj, origClass)
        {
            var srcElement = event.srcElement || event.target;

            if (srcElement.tagName.toLowerCase() == 'td' || srcElement.tagName.toLowerCase() == 'tr') {
                checkboxObj.checked = !checkboxObj.checked;
            
            } else if (srcElement.tagName.toLowerCase() == 'input') {
                event.cancelBubble = true;
            }

            if (trObj.className == 'highlightedRow') {
                trObj.className = origClass;
            } else {
                trObj.className = 'highlightedRow';
            }
        }


        /**
        * Handles redirecting for viewing a row
        */
        function row_view()
        {
            var selectedRows = getSelectedRows();
            var view         = '';

            if (selectedRows.length == 0) {
                alert('You must select a row to view!');
                return;
            }

            if (selectedRows.length > 1) {
                alert('You can only select one row at a time to view');
                return;

            } else {
                view = 'view=' + encodeURIComponent(selectedRows[0]);
            }

            location.href = location.href + (location.search.length ? '&' : '?') + view;
        }


        /**
        * Handles redirecting for deleting rows
        */
        function row_delete()
        {
            var selectedRows = getSelectedRows();
            var deletes      = new Array();
            
            if (selectedRows.length == 0) {
                alert('You must select one or more rows to delete!');
                return;
            }

            for (var i=0; i<selectedRows.length; ++i) {
                deletes[deletes.length] = 'delete[]=' + encodeURIComponent(selectedRows[i]);
            }

            if (confirm('Are you sure you wish to delete the selected row(s)? ' + (deletes.length > 1 ? '\nWARNING: Multiple rows selected!' : ''))) {
                location.href = location.href + (location.search.length ? '&' : '?') + deletes.join('&');
            }
        }


        /**
        * Handles redirecting for editing rows
        */
        function row_edit()
        {
            var selectedRows = getSelectedRows();
            var edit         = '';

            if (selectedRows.length == 0) {
                alert('You must select a row to edit!');
                return;
            }

            if (selectedRows.length > 1) {
                alert('You can only select one row at a time to edit');
                return;

            } else {
                edit = 'edit=' + encodeURIComponent(selectedRows[0]);
            }

            location.href = location.href + (location.search.length ? '&' : '?') + edit;
        }


        /**
        * Handles redirecting for copying a row
        */
        function row_copy()
        {
            var selectedRows = getSelectedRows();
            var copy         = '';

            if (selectedRows.length == 0) {
                alert('You must select a row to copy!');
                return;
            }

            if (selectedRows.length > 1) {
                alert('You can only select one row at a time to copy');
                return;

            } else {
                copy = 'copy=' + encodeURIComponent(selectedRows[0]);
            }

            location.href = location.href + (location.search.length ? '&amp;' : '?') + copy;
        }


        /**
        * Handles redirecting for adding a row
        */
        function row_add()
        {
            location.href = location.href + (location.search.length ? '&' : '?') + 'add=1';
        }


        /**
        * Handles the search button
        */
        function search()
        {
            var searchStr = document.getElementById('searchInput').value;

            location.href = location.href + (location.search.length ? '&' : '?') + 'search=' + encodeURIComponent(searchStr);
        }


        /**
        * Handles ordering links
        */
        function orderBy(field)
        {
            location.href = location.href + (location.search.length ? '&' : '?') + 'orderby=' + encodeURIComponent(field);
        }


        /**
        * Enables the apply button on the edit form
        */
        function enableApply()
        {
            document.forms[0].elements['action'][2].disabled = false;
        }


        /**
        * Returns the current date and time in ISO8660 format (YYYY-MM-DD HH:MM:SS)
        */
        function currentDateTime()
        {
            return currentDate() + ' ' + currentTime();
        }


        /**
        * Returns the current date in ISO8660 format
        */
        function currentDate()
        {
            var d = new Date();

            var date  = d.getDate() > 9 ? d.getDate() : '0' + String(d.getDate());
            var month = (d.getMonth() + 1) > 9 ? (d.getMonth() + 1) : '0' + (d.getMonth() + 1);
            var year  = d.getFullYear();

            return year + '-' + month + '-' + date;
        }


        /**
        * Returns the current time in ISO8660 format
        */
        function currentTime()
        {
            var d = new Date();

            var hours   = d.getHours() > 9 ? d.getHours() : '0' + d.getHours();
            var minutes = d.getMinutes() > 9 ? d.getMinutes() : '0' + d.getMinutes();
            var seconds = d.getSeconds() > 9 ? d.getSeconds() : '0' + d.getSeconds();

            return hours + ':' + minutes + ':' + seconds;
        }
        
        ///////////////////////////////////////////////////////////////////////
        //     This fade library was designed by Erik Arvidsson for WebFX    //
        //                                                                   //
        //     For more info and examples see: http://webfx.eae.net          //
        //     or contact Erik at http://webfx.eae.net/contact.html#erik     //
        //                                                                   //
        //     Feel free to use this code as lomg as this disclaimer is      //
        //     intact.                                                       //
        ///////////////////////////////////////////////////////////////////////
        
        
        var __fadeArray = new Array();    // Needed to keep track of wich elements are animating
        
        //////////////////  fade  ////////////////////////////////////////////////////////////
        //                                                                                  //
        //   parameter: fadeIn                                                              //
        // description: A boolean value. If true the element fades in, otherwise fades out  //
        //              The steps and msec are optional. If not provided the default        //
        //              values are used                                                     //
        //                                                                                  //
        //////////////////////////////////////////////////////////////////////////////////////
        
        function Fade(el, fadeIn, steps, msec)
        {
            if (steps == null) steps = 4;
            if (msec  == null) msec  = 25;
            
            if (el.fadeIndex == null) {
                el.fadeIndex = __fadeArray.length;
            }
            
            __fadeArray[el.fadeIndex] = el;

            if (el.fadeStepNumber == null) {
                if (el.style.visibility == "hidden") {
                    el.fadeStepNumber = 0;
                } else {
                    el.fadeStepNumber = steps;
                }
                
                if (fadeIn) {
                    el.style.filter = "Alpha(Opacity=0)";
                    el.style.MozOpacity = '0';
                } else {
                    el.style.filter = "Alpha(Opacity=100)";
                    el.style.MozOpacity = '1';
                }
            }
                    
            window.setTimeout("RepeatFade(" + fadeIn + "," + el.fadeIndex + "," + steps + "," + msec + ")", msec);
        }
        
        //////////////////////////////////////////////////////////////////////////////////////
        //  Used to iterate the fading                                                      //
        //////////////////////////////////////////////////////////////////////////////////////
        function RepeatFade(fadeIn, index, steps, msec)
        {
            el = __fadeArray[index];
            
            c = el.fadeStepNumber;
            if (el.fadeTimer != null) {
                window.clearTimeout(el.fadeTimer);
            }
                
            if ((c == 0) && (!fadeIn)) {            // Done fading out!
                el.style.visibility = "hidden";        // If the platform doesn't support filter it will hide anyway
        //        el.style.filter = "";
                return;
            
            } else if ((c==steps) && (fadeIn)) {    //Done fading in!
                el.style.filter = "";
                el.style.MozOpacity = '1';
                el.style.visibility = "visible";
                return;
            
            } else {
                (fadeIn) ?     c++ : c--;
                el.style.visibility = "visible";
                el.style.filter = "Alpha(Opacity=" + 100*c/steps + ")";
                el.style.MozOpacity = c/steps;
        
                el.fadeStepNumber = c;
                el.fadeTimer = window.setTimeout("RepeatFade(" + fadeIn + "," + index + "," + steps + "," + msec + ")", msec);
            }
        }
    // -->
    </script>
</head>
<body onload="onload_handler()">

<div class="headerBar">
    <?=$this->getConfig('title')?><br />
    <a href="http://www.phpguru.org" target="_blank" style="text-decoration: none; font-size: 10pt">MySQL TableEditor by Richard Heyes</a>
</div>

<div class="mainbody">
    <?if($this->errors):?>
        <?foreach($this->errors as $e):?>
            <div class="error">ERROR: <?=htmlspecialchars($e)?></div>
        <?endforeach?>
    <?endif?>

<?php
        }


        /**
        * Displays the page footer
        */
        function displayFooter()
        {
            $footerfile = $this->getConfig('footerfile');
            if ($footerfile) {
                require($footerfile);
                return;
            }
?>
    <div class="copyright">
        <a href="http://www.phpguru.org">
            &copy; Copyright 2005 Richard Heyes
        </a>
    </div>

    <!-- End of mainbody div -->
</div>

<div id="csvDownloadLayer" onclick="event.cancelBubble = true">
    <fieldset style="width: 265px; text-align: right">
        <legend>Download CSV </legend>
        
        <table border="0">
            <tr>
                <td>Download what:</td>
                <td>
                    <select id="csvdownload_what" align="absmiddle">
                        <option value="">Select...</option>
                        <option value="selected">Selected Rows</option>
                        <option value="page">This Page</option>
                        <option value="table">Entire Table</option>
                    </select>
                </td>
            </tr>
        
            <tr>
                <td><label for="include_headers">Include headers?</label></td>
                <td><input type="checkbox" id="include_headers" checked></td>
            </tr>
        </table>
        
        <button onclick="csv_download()">Download</button>
    </fieldset>
</div>

</body>
</html>
<?php
        }


        /**
        * Used by search to highlight the search term in searchable
        * fields.
        *
        * @param string $input Input to filter/update
        */
        function searchDisplayFilter($input)
        {
            $searchTerm = preg_quote($this->search);
            return preg_replace("#($searchTerm)#i", "<span class=\"searchHighlight\">\$1</span>", $input);
        }

        /**
        * Method to query the database
        *
        * @param string $sql SQL query to perform
        */
        function dbQuery($sql)
        {
            if (is_resource($this->db)) {
                return mysql_query($sql, $this->db);
            }

            return false;
        }


        /**
        * Method to get all results from a query
        *
        * @param string $sql SQL query to perform
        */
        function dbGetAll($sql)
        {
            $results = array();

            if ($res = $this->dbQuery($sql)) {
                while ($row = mysql_fetch_array($res, MYSQL_ASSOC)) {
                    $results[] = $row;
                }

                return $results;
            }

            return false;
        }


        /**
        * Method to get first row of query
        *
        * @param string $sql SQL query to perform
        */
        function dbGetRow($sql)
        {
            $result = array();

            if ($res = $this->dbQuery($sql) AND mysql_num_rows($res) > 0) {
                $row = mysql_fetch_array($res, MYSQL_ASSOC);

                return $row;
            }

            return false;
        }


        /**
        * Method to get first column from first row of a query
        *
        * @param string $sql SQL query to perform
        */
        function dbGetOne($sql)
        {
            $result = false;

            if ($res = $this->dbQuery($sql) AND mysql_num_rows($res) > 0) {
                $row = mysql_fetch_row($res);

                if ($row) {
                    return $row[0];
                }
            }

            return false;
        }


        /**
        * Method to get associative array of result set, first column is key,
        * second column is value.
        *
        * @param string $sql SQL query to perform
        */
        function dbGetAssoc($sql)
        {
            $results = array();

            if ($res = $this->dbQuery($sql) AND mysql_num_rows($res) > 0) {
                while ($row = mysql_fetch_row($res)) {
                    $results[$row[0]] = $row[1];
                }

                return $results;
            }

            return false;
        }


        /**
        * Quotes a string for use in a query. Numeric values do not
        * have quote marks wrapped around them
        *
        * @param string $str String to quote
        */
        function dbQuote($str)
        {
            if (is_null($str)) {
                return 'NULL';
            }

            /**
            * Handle magic_quotes_gpc
            */
            if (ini_get('magic_quotes_gpc')) {
                $str = stripslashes($str);
            }

            return "'" . mysql_real_escape_string($str, $this->db) . "'";
        }


        /**
        * Returns last error message from database
        */
        function dbError()
        {
            return mysql_error($this->db);
        }
    }


    /**
    * Necessary to allow translation of ampersands to their entity equivalent. This is
    * due to MSIE replacing &copy= in urls with the copyright symbol, despite the lack
    * of ending semi-colon... :-/
    */
    class TableEditor_URL extends Net_URL
    {
        /**
        * Returns full url
        *
        * @param  bool   $convertAmpersands Whether to convert & to &amp;
        * @return string                    Full url
        * @access public
        */
        function getURL($convertAmpersands = false)
        {
            $querystring = $this->getQueryString();

            if ($convertAmpersands) {
                $querystring = str_replace('&', '&amp;', $querystring); // This is the key difference to TableEditor_URL
            }

            $this->url = $this->protocol . '://'
                       . $this->user . (!empty($this->pass) ? ':' : '')
                       . $this->pass . (!empty($this->user) ? '@' : '')
                       . $this->host . ($this->port == $this->getStandardPort($this->protocol) ? '' : ':' . $this->port)
                       . $this->path
                       . (!empty($querystring) ? '?' . $querystring : '')
                       . (!empty($this->anchor) ? '#' . $this->anchor : '');

            return $this->url;
        }
    }
?> 