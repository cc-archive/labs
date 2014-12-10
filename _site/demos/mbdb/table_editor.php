<?php

/**
* Demo of TableEditor class. Uses the following table:
*
* CREATE TABLE `TableEditorDemo` (
*   `te_id` int(10) unsigned NOT NULL auto_increment,
*   `te_name` varchar(32) NOT NULL default '',
*   `te_password` varchar(32) NOT NULL default '',
*   `te_email` varchar(32) NOT NULL default '',
*   `te_datetime` datetime NOT NULL default '0000-00-00 00:00:00',
*   `te_age` tinyint(3) unsigned NOT NULL default '0',
*   `te_live` enum('LIVE','NOT LIVE') default NULL,
*   `te_desc` mediumtext NOT NULL,
*   PRIMARY KEY  (`te_id`)
* ) TYPE=MyISAM;
*/

require_once('include/table_editor.php');

$editor = new TableEditor($conn, 'TableEditorDemo');
    
// $editor->setConfig('allowView', false);
// $editor->setConfig('allowAdd', false);
// $editor->setConfig('allowEdit', false);
// $editor->setConfig('allowCopy', false);
// $editor->setConfig('allowDelete', false);

$editor->setConfig('perPage', 15);

/*   	number  	int(4)  	 	  	No  	 	auto_increment  	  Browse distinct values   	  Change   	  Drop   	  Primary   	  Unique   	  Index   	 Fulltext
	acronym 	varchar(255) 	utf8_general_ci 		No 			Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	name 	varchar(255) 	utf8_general_ci 		No 			Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	database_url 	text 	utf8_general_ci 		No 			Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	download_url 	text 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	tou_url 	text 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	tou_extract_ncbi 	enum('0', '1') 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	tou_extract_other 	text 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	technical_openness 	enum('0', '1', 'N/A') 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	technical_limited_openness 	enum('0', '1', 'N/A') 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	technical_restriction 	enum('0', '1', 'N/A') 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	technical_needs_registration 	enum('0', '1', 'N/A') 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	legal_policy_avail 	enum('0', '1', 'N/A') 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	legal_pd 	enum('0', '1', 'N/A', 'N/C') 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	legal_by 	enum('0', '1', 'N/A', 'N/C') 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	legal_nd 	enum('0', '1', 'N/A', 'N/C') 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	legal_nc 	enum('0', '1', 'N/A', 'N/C') 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	legal_sa 	enum('0', '1', 'N/A', 'N/C') 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	comments 	text 	utf8_general_ci 		No 			Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
	article 	text 	utf8_general_ci 		Yes 	NULL 		Browse distinct values 	Change 	Drop 	Primary 	Unique 	Index 	Fulltext
 */
$editor->setDisplayNames(array('number'       => 'ID Number',
                               'acronym'     => 'Acronym',
                               'name' => 'Database Name',
                               'database_url'    => 'Database URL',
                               'download_url' => 'Download URL',
                               'tou_url'      => 'Terms of Use - URL',
                               'tou_extract_ncbi'     => 'TOU - NCBI?',
                               'tou_extract_other'     => 'TOU - other',
                               'technical_openness'     => 'Technical Openness',
                               'technical_limited_openness'     => 'Technical Limited Openness',
                               'technical_restriction'     => 'Technical Restriction',
                               'technical_needs_registration'     => 'Technical Needs Registration',
                               'legal_policy_avail'     => 'Legal Policy Available',
                               'legal_pd'     => 'Public Domain',
                               'legal_by'     => 'Attribution (BY)',
                               'legal_nd'     => 'No Derivatives (ND)',
                               'legal_nc'     => 'Non-commercial (NC)',
                               'legal_sa'     => 'Share Alike (SA)',
                               'comments'     => 'Comments',
                               'article'     => 'Article'));

// $editor->noDisplay('te_password');
//$editor->noEdit('te_live');

//$editor->setInputType('te_password', 'password');
//$editor->setInputType('te_email', 'email');

$editor->setSearchableFields('number', 'acronym', 'name', 'database_url', 'download_url', 'tou_url', 'tou_extract_ncbi', 
								'tou_extract_other', 'technical_openness', 'technical_limited_openness', 'technical_restriction', 
								'technical_needs_registration', 'legal_policy_avail', 'legal_pd', 'legal_by', 'legal_nd', 
								'legal_nc', 'legal_sa', 'comments', 'article');
$editor->setRequiredFields('number', 'acronym', 'name', 'database_url', 'download_url', 'tou_url', 'tou_extract_ncbi', 
								'tou_extract_other', 'technical_openness', 'technical_limited_openness', 'technical_restriction', 
								'technical_needs_registration', 'legal_policy_avail', 'legal_pd', 'legal_by', 'legal_nd', 
								'legal_nc', 'legal_sa', 'comments', 'article');

$editor->setDefaultOrderby('number');
//$editor->setDefaultValues(array('te_id'   => '0',
//                                'te_live' => 'NOT LIVE'));

//$editor->addAdditionCallback(create_function('$data', 'foreach($data as $k => $v) {$body[] = "$k => $v";} mail("joe@example.com", "Row added", implode("\n", $body));'));
//$editor->addEditCallback(create_function('$data', 'foreach($data as $k => $v) {$body[] = "$k => $v";} mail("joe@example.com", "Row edited", implode("\n", $body));'));
//$editor->addCopyCallback(create_function('$data', 'foreach($data as $k => $v) {$body[] = "$k => $v";} mail("joe@example.com", "Row copied", implode("\n", $body));'));
//$editor->addDeleteCallback(create_function('$data', 'foreach($data as $k => $v) {$body[] = "$k => $v";} mail("joe@example.com", "Row deleted", implode("\n", $body));'));

function validateAge(&$obj, $data)
{
    $data = (int)$data;

    if ($data < 18 OR $data > 80) {
        $obj->addError('Invalid age! Please enter an age between 18 and 80');
    }

    return $data;
}

//$editor->addValidationCallback('te_age', 'validateAge');

//$editor->addDisplayFilter('te_desc', create_function('$v', 'return substr($v, 0, 100) . "...";'));

$editor->display();

?> 