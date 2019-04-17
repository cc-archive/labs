/* GLOBALS */
var author_index = 0;
var child_index = 0;
var cgi = "create_pdf.cgi";
var dates = {
    create: '',
    publish: '',
    copyright: '',
    grant: '',
    twopen: '',
    twclose: '',
    nwopen: '',
    nwclose: ''
};
var tot = {
    authors: [],
    authors_set: false,
    successor_grantors: [],
    work_for_hire: '',
    transfer_by_will: '',
    type: '',
    author_grant: '',
    successor_grant: '',
    create_date: '',
    publish_date: '',
    copyright_date: '',
    grant_date: '',
    twopen: '',
    twclose: '',
    nwopen: '',
    nwclose: '',
    title: '',
    ocn: '',
    grant_description: '',
    original_grantee: '',
    current_grantee: ''
};

var stack = {
    history: [],
    screens: []
};

buttons = {

  employee: {

    next: function() {

      /* employee should be Yes/No/false */
      var employee = Form.getInputs($('term_form'),'radio','employee').find(function(input){
        return input.checked;
      });

      /* nothing selected or unexpected return value */
      if (!employee || ($F(employee) != 'Yes' && $F(employee) != 'No')) {
        Element.show(getErrorDiv('employee'));
        return;
      }

      Element.hide(getErrorDiv('employee'));
      Element.update($('h-wfh-emp-ans'), $F(employee));
      showHistory($('h-wfh-emp'));

      if ($F(employee) == 'Yes') {
        tot.work_for_hire = 'Yes';
        showScreen($('error-scope_of_employment'));

      } else if ($F(employee) == 'No')  {
        showScreen($('commissioned'));
      }
    },
    back: goBack

  },

  commissioned: {

    next: function() {

      /* commissioned should be Yes/No/false */
      var commissioned = Form.getInputs($('term_form'),'radio','commissioned').find(function(input){
        return input.checked;
      });

      /* nothing selected or unexpected return value */
      if (!commissioned || ($F(commissioned) != 'Yes' && $F(commissioned) != 'No')) {
        Element.show(getErrorDiv('commissioned'));
        return;
      }

      Element.hide(getErrorDiv('commissioned'));
      Element.update($('h-wfh-com-ans'), $F(commissioned));
      showHistory($('h-wfh-com'));

      if ($F(commissioned) == 'No')  {
        tot.work_for_hire = 'No';
        showScreen($('transfer_by_will'));

      } else if ($F(commissioned) == 'Yes')  {
        showScreen($('pre1978'));
      }
    },
    back: goBack
  },

  pre1978: {

    next: function() {

      /* pre1978 should be Yes/No/false */
      var pre1978 = Form.getInputs($('term_form'),'radio','pre1978').find(function(input){
        return input.checked;
      });


      /* nothing selected or unexpected return value */
      if (!pre1978 || ($F(pre1978) != 'Yes' && $F(pre1978) != 'No')) {
        Element.show(getErrorDiv('pre1978'));
        return;
      }

      Element.hide(getErrorDiv('pre1978'));
      Element.update($('h-wfh-pre-ans'), $F(pre1978));
      showHistory($('h-wfh-pre'));

      if ($F(pre1978) == 'Yes')  {
        tot.work_for_hire = 'Yes';
        showScreen($('error-commissioned-pre1978'));

      } else if ($F(pre1978) == 'No')  {
        showScreen($('written_agreement'));
      }
    },
    back: goBack
  },

  written_agreement: {

    next: function() {

      /* written should be Yes/No/false */
      var written = Form.getInputs($('term_form'),'radio','written').find(function(input){
        return input.checked;
      });

      /* nothing selected or unexpected return value */
      if (!written || ($F(written) != 'Yes' && $F(written) != 'No')) {
        Element.show(getErrorDiv('written_agreement'));
        return;
      }

      Element.hide(getErrorDiv('written_agreement'));
      Element.update($('h-wfh-wri-ans'), $F(written));
      showHistory($('h-wfh-wri'));

      if ($F(written) == 'No')  {
        tot.work_for_hire = 'No';
        showScreen($('transfer_by_will'));

      } else if ($F(written) == 'Yes')  {
        showScreen($('categoryA'));
      }
    },
    back: goBack
  },

  categoryA: {

    next: function() {

      /* categoryA should be Yes/No/false */
      var categoryA = Form.getInputs($('term_form'),'radio','categoryA').find(function(input){
        return input.checked;
      });

      /* nothing selected or unexpected return value */
      if (!categoryA || ($F(categoryA) != 'Yes' && $F(categoryA) != 'No')) {
        Element.show(getErrorDiv('categoryA'));
        return;
      }

      Element.hide(getErrorDiv('categoryA'));
      Element.update($('h-wfh-catA-ans'), $F(categoryA));
      showHistory($('h-wfh-catA'));

      if ($F(categoryA) == 'Yes')  {
        tot.work_for_hire = 'Yes';
        showScreen($('error-commissioned-categoryA'));

      } else if ($F(categoryA) == 'No')  {
        showScreen($('categoryB'));
      }
    },
    back: goBack
  },

  categoryB: {

    next: function() {

      /* categoryB should be Yes/No/false */
      var categoryB = Form.getInputs($('term_form'),'radio','categoryB').find(function(input){
        return input.checked;
      });

      /* nothing selected or unexpected return value */
      if (!categoryB || ($F(categoryB) != 'Yes' && $F(categoryB) != 'No')) {
        Element.show(getErrorDiv('categoryB'));
        return;
      }

      Element.hide(getErrorDiv('categoryB'));
      Element.update($('h-wfh-catB-ans'), $F(categoryB));
      showHistory($('h-wfh-catB'));

      if ($F(categoryB) == 'Yes')  {
        tot.work_for_hire = 'Yes';
        showScreen($('error-commissioned-categoryB'));

      } else if ($F(categoryB) == 'No')  {
        showScreen($('categoryC'));
      }
    },
    back: goBack
  },

  categoryC: {

    next: function() {

      /* categoryC should be Yes/No/false */
      var categoryC = Form.getInputs($('term_form'),'radio','categoryC').find(function(input){
        return input.checked;
      });

      /* nothing selected or unexpected return value */
      if (!categoryC || ($F(categoryC) != 'Yes' && $F(categoryC) != 'No')) {
        Element.show(getErrorDiv('categoryC'));
        return;
      }

      Element.hide(getErrorDiv('categoryC'));
      Element.update($('h-wfh-catC-ans'), $F(categoryC));
      showHistory($('h-wfh-catC'));

      if ($F(categoryC) == 'Yes') {
        tot.work_for_hire = 'Yes';
        showScreen($('error-commissioned-categoryC'));

      } else if ($F(categoryC) == 'No')  {
        showScreen($('transfer_by_will'));
      }
    },
    back: goBack
  },

  transfer_by_will: {
    next: function() {
      /* should be Yes/No/false */
      var will = Form.getInputs($('term_form'),'radio','will').find(function(input){
        return input.checked;
      });

      /* nothing selected or unexpected return value */
      if (!will || ($F(will) != 'Yes' && $F(will) != 'No')) {
        Element.show(getErrorDiv('transfer_by_will'));
        return;
      }

      Element.hide(getErrorDiv('transfer_by_will'));
      Element.update($('h-will-ans'), $F(will));
      showHistory($('h-will'));

      if ($F(will) == 'Yes') {
        tot.transfer_by_will = 'Yes';
        showScreen($('error-transfer_by_will'));

      } else if ($F(will) == 'No')  {
        showScreen($('create_date'));
      }
    },
    back: goBack
  },

  create_date: {

    next: function() {

      dates.create = checkYear($F('cyear'));

      if (!dates.create) {
        Element.show(getErrorDiv('create_date'));
        return;

      } else {
        Element.hide(getErrorDiv('create_date'));
        tot.create_date = dates.create.toString();
        Element.update($('h-cdate-ans'), tot.create_date);
        showHistory($('h-cdate'));
        showScreen($('publish_date'));
      }
    },
    back: goBack
  },

  publish_date: {

    next: function() {

      dates.publish = checkYear($F('pyear'));

      if (dates.create < 1978 && !dates.publish) {
        Element.show(getErrorDiv('publish_date'));
        return;

      } else if (dates.publish && (dates.publish < dates.create)) {
        Element.show(getErrorDiv('publish_date'));
        alert('Publication Date cannot be prior to Creation Date');
        return;

      } else {
        Element.hide(getErrorDiv('publish_date'));
        dates.copyright = calculateCopyrightDate(dates.create, dates.publish);
        tot.publish_date = dates.publish ? dates.publish.toString() : '(unspecified)';
        tot.copyright_date = dates.copyright.toString();

        if (dates.copyright < 1923) {
          showScreen($('error-publicdomain'));

        } else {
          Element.update($('h-pdate-ans'), tot.publish_date);
          showHistory($('h-pdate'));
          showScreen($('grant_date'));
        }
      }
    },
    back: goBack
  },

  grant_date: {

    next: function() {

      dates.grant = checkYear($F('gyear'));

      if (!dates.grant) {
        Element.show(getErrorDiv('grant_date'));
        return;

      } else if (dates.grant < dates.create) {
        Element.show(getErrorDiv('grant_date'));
        alert('Transfer Date cannot be prior to Creation Date'); /* is this legally accurate? */
        return;

      } else {
        Element.hide(getErrorDiv('grant_date'));
        tot.grant_date = dates.grant.toString();
        Element.update($('h-gdate-ans'), tot.grant_date);

        /* grant of common law copyright... Non-terminable */
        if (dates.grant < 1978 && dates.publish >= 1978) {
          showScreen($('error-commonlaw-303-grant'));
          return;
        }

        /* its time... */
        calculateTerminationWindow();

        /* If we're before the notice window... */
        var today = new Date();
        showHistory($('h-gdate'));
        if (today.getFullYear() < dates.nwopen) {
          Element.update($('error-before_window-notice_window_open'), dates.nwopen.toString());
          showScreen($('error-before_window'));

        /* If the notice window has expired... */
        } else if (today.getFullYear() > dates.nwclose) {
          showScreen($('error-after_window'));

        } else {
          /* Otherwise, we're good - continue */
          showScreen($('author_grant'));
        }
      }
    },
    back: goBack
  },

  author_names: {

    update: function() {
      var c = $('authors_container');
      while(c.childNodes.length) { c.removeChild(c.lastChild); }
      if (!tot.authors_set) buttons.author_names.more_authors();
      for(var i=0; i<tot.authors.length; i++) {
        buttons.author_names.more_authors();
        var inputs = c.lastChild.getElementsByTagName('input');
        inputs[0].value   = tot.authors[i].name;
      }
    },

    more_authors: function() {
      var new_node = $('author_name').cloneNode(true);
      new_node.id = '';
      new_node.value = '';
      new_node.className = 'author_name';
      new_node.getElementsByTagName('input')[0].value = '';
      Element.hide(new_node.getElementsByTagName('span')[0]);
      $('authors_container').appendChild(new_node);
      return false;
    },

    less_authors: function() {
      if ($('authors_container').childNodes.length == 1) { return false; }
      var last_node = $('authors_container').lastChild;
      last_node.parentNode.removeChild(last_node);
      return false;
    },

    next: function() {

      var author_nodes = $$('#authors_container input');

      /* Check for errors */
      if (author_nodes.length <= 0 ) {
        Element.show($('author_name-error'));
        alert('not enough author nodes...');
        return;
      } else {
        var errors = author_nodes.findAll(function(input){
          return ( !Field.present(input) );
        });
        author_nodes.each(function(input){
          Element.hide($(input.parentNode.getElementsByTagName('span')[0]));
        });
        errors.each(function(input){
          Element.show($(input.parentNode.getElementsByTagName('span')[0]));
        });
        if (errors.length) { return; }
      }

      /* Save in Global and Fill in deselect span */
      Element.update($('h-names-ans'), '');
      while(tot.authors.pop());
      for (var i=0; i<author_nodes.length; i++) {

        tot.authors.push({
          name: author_nodes[i].value,
          alive: 'unknown',
          grantor: 'unknown',
          spouse: 'unknown',
          children: [],
          children_set: false
        });

      }
      tot.authors_set = true;

      Element.update($('h-names-ans'), $A(tot.authors).collect(function(v){ return v.name; }).join(', '));

      /* move to next screen */
      showHistory($('h-names'));
      showScreen($('employee'));
    },

    back: goBack
  },

  basic: {

    next: function() {

      /* check inputs */
      var inputs = $$('#basic input');
      var errors = $$('#basic .question-error');

      errors.each(function(error){
        Element.hide(error);
      });

      tot.title             = $F('title')            || '(unspecified)';
      tot.ocn               = $F('ocn')              || '(unspecified)';
      tot.original_grantee  = $F('original_grantee') || '(unspecified)';
      tot.current_grantee   = $F('current_grantee')  || '(unspecified)';
      tot.grant_description = $F('grantname')        || '(unspecified)';

      Element.update($('h-basic-title'),            tot.title);
      Element.update($('h-basic-ocn'),              tot.ocn);
      Element.update($('h-basic-desc'),             tot.grant_description);
      Element.update($('h-basic-original-grantee'), tot.original_grantee);
      Element.update($('h-basic-current-grantee'),  tot.current_grantee);

      /* move to next screen */
      showHistory($('h-basic'));
      showScreen($('author_names'), buttons.author_names.update );

    },
    back: goBack
  },

  author_grant: {

    next: function() {

      /* author_grant should be Yes/No/false */
      var author_grant = Form.getInputs($('term_form'),'radio','author_grant').find(function(input){
        return input.checked;
      });

      /* nothing selected */
      if (!author_grant || ($F(author_grant) != 'Yes' && $F(author_grant) != 'No')) {
        Element.show(getErrorDiv('author_grant'));
        return;
      }

      Element.hide(getErrorDiv('author_grant'));
      tot.author_grant = $F(author_grant);
      Element.update($('h-agrant-ans'), $F(author_grant));

      if ($F(author_grant) == 'Yes') {

        // deal with joint authorship - which authors were grantors?
        if ( tot.authors.length > 1 ) {
          showHistory($('h-agrant'));
          showScreen($('author_grantors'), buttons.author_grantors.update );

        // Single author - he/she was the grantor
        } else {
          tot.authors[author_index].grantor = 'Yes';
          showHistory($('h-agrant'));
          showScreen($('author_alive'), buttons.author_alive.update );
        }

      /* If not an Author Grant, 203 termination => error, 304 termination => successor check */
      } else if ($F(author_grant) == 'No')  {

        // Check for successor grants
        if ( tot.type == '203' ) {
          // only author grants allowed for 203 terminations (post-1978 grants)
          showHistory($('h-agrant'));
          showScreen($('error-invalid_grantor-203'));
        } else {
          showHistory($('h-agrant'));
          showScreen($('successor_grant'));
        }
      }

    },
    back: goBack
  },

  author_grantors: {

    update: function() {
      var container = $('grantor_container');
      while(container.childNodes.length) { container.removeChild(container.lastChild); }
      for (var i=0; i < tot.authors.length; i++) {
        Element.update($('grantor-name'), tot.authors[i].name);
        $('grantor-input').value = i;
        addCloned(container,$('grantor-template'));
      }
    },

    next: function() {

      var g = $$('#grantor_container input').findAll(function(x){ return x.checked; });
      if (g.length <= 0) {
        Element.show(getErrorDiv('author_grantors'));
      } else {
        g.each(function(x){
          tot.authors[x.value].grantor = 'Yes';
        });

        Element.hide(getErrorDiv('author_grantors'));
        showHistory($('h-grantors'));
        author_index = -1;
        author_alive_next();
      }
      Element.update($('h-grantors-ans'), g.map(function(x){ return getNameStr(tot.authors[x.value]); }).join(', '));

    },
    back: goBack
  },

  successor_grant: {

    next: function() {

      /* successor_grant should be Yes/No/false */
      var successor_grant = Form.getInputs($('term_form'),'radio','successor_grant').find(function(input){
        return input.checked;
      });


      /* nothing selected */
      if (!successor_grant || ($F(successor_grant) != 'Yes' && $F(successor_grant) != 'No')) {
        Element.show(getErrorDiv('successor_grant'));
        return;
      }

      Element.hide(getErrorDiv('successor_grant'));
      tot.successor_grant = $F(successor_grant);
      Element.update($('h-sgrant-ans'), $F(successor_grant));
      showHistory($('h-sgrant'));

      if ($F(successor_grant) == 'Yes') {

        showScreen($('successor_grantors'));

      /* Assumption: we only ask this question if Author Grant is No, and its a 304 termination */
      } else if ($F(successor_grant) == 'No')  {

        showScreen($('error-invalid_grantor-304'));

      }
    },
    back: goBack
  },

  successor_grantors: {

    next: function() {

      var successors = $$('#successors_container input');

      /* Check for errors */
      if (successors.length <= 0 ) {
        alert('not enough successor nodes...');
        return;
      } else {

        /* reset all error fields */
        $A($$('#successors_container .question-error')).each(function(error){
          Element.hide(error);
        });

        /* look for errors and show them */
        var errors = successors.findAll(function(input){
          return ( input.type == 'text' ? !Field.present(input) : false );
        });
        errors.each(function(input){
          Element.show($(input.name + '-error'));
        });
        if (errors.length) { return; }
      }

      while(tot.successor_grantors.pop());
      for(var i=0;i<successors.length;i+=3) {
        tot.successor_grantors.push({
          name: $F(successors[i]),
          relationship: $F(successors[i+1]),
          alive: successors[i+2].checked ? 'Yes' : 'No'
        });
      }
      showScreen($('submit'));
      submit();
    },
    back: goBack
  },

  author_alive: {

    update: function() {
      Element.update($('author_alive-name'), tot.authors[author_index].name);
      Element.hide(getErrorDiv('author_alive'));
      $$('#author_alive input').each(function(input){
        input.checked = (input.value == tot.authors[author_index].alive ? true : false);
      });
    },

    next: function() {

      /* should be Yes/No/false */
      var author_alive = Form.getInputs($('term_form'),'radio','author_alive').find(function(input){
        return input.checked;
      });


      /* nothing selected */
      if (!author_alive || ($F(author_alive) != 'Yes' && $F(author_alive) != 'No')) {
        Element.show(getErrorDiv('author_alive'));
        return;
      }

      Element.hide(getErrorDiv('author_alive'));

      tot.authors[author_index].alive = $F(author_alive);

      rebuildFamilyTree(tot.authors);

      if ($F(author_alive) == 'Yes') {

        if (!author_alive_next()) {
          showScreen($('submit'));
          submit();
        }

      } else if ($F(author_alive) == 'No')  {

        /* On to Spouse Info */
        showScreen($('author_spouse_info'),buttons.author_spouse_info.update);

      }
    },
    back: function() {

      /* this really needs to handle all author family screens... */
      goBack(function() {
        for(var i=author_index-1; i >= 0; i--) {
          if(tot.authors[i].grantor == 'Yes') {
            author_index = i;
            child_index = tot.authors[i].children.length - 1;
            buttons.author_alive.update();
            buttons.author_spouse_info.update();
            buttons.author_grandchildren.update();
          }
        }
      });
    }
  },

  author_spouse_info: {

    update: function() {
      Element.update($('author_spouse_info-name1'), tot.authors[author_index].name);
      Element.update($('author_spouse_info-name2'), tot.authors[author_index].name);
      Element.update($('author_spouse_info-name3'), tot.authors[author_index].name);
      Element.update($('author_spouse_info-name4'), tot.authors[author_index].name);
      if (typeof(tot.authors[author_index].spouse) == 'object') {
        $$('#author_spouse_info input').each(function(input){
          if (input.type == 'radio') {
            input.checked = (input.value == tot.authors[author_index].spouse.alive ? true : false);
          }
        });
        $('author_spouse_name').value = tot.authors[author_index].spouse.name;
      } else if (tot.authors[author_index].spouse == 'none') {
        $('author_spouse_name').value = '';
        if (!Element.visible($('q_spouse_none'))) { buttons.author_spouse_info.spouse_toggle(); }
      } else if (Element.visible($('q_spouse_none'))) { buttons.author_spouse_info.spouse_toggle(); }
      var c = $('childs_container');
      while(c.childNodes.length) { c.removeChild(c.lastChild); }
      var children = tot.authors[author_index].children;
      if(!tot.authors[author_index].children_set) { buttons.author_spouse_info.more_children(); }
      for(var i=0; i<children.length; i++) {
        buttons.author_spouse_info.more_children();
        var inputs = c.lastChild.getElementsByTagName('input');
        inputs[0].value   = children[i].name;
        inputs[1].checked = children[i].alive == 'Yes' ? true : false;
      }
    },

    spouse_toggle: function() {
      Element.toggle($('q_spouse_none'));
      Element.toggle($('q_spouse_name'));
      Element.toggle($('q_spouse_alive'));
    },

    more_children: function() {
      Element.hide($('no_children'));
      // i could clean this up...
      var new_node = $('child_name').cloneNode(true);
      new_node.id = '';
      new_node.value = '';
      new_node.className = 'child_name';
      new_node.getElementsByTagName('input')[0].value = '';
      Element.hide(new_node.getElementsByTagName('span')[0]);
      $('childs_container').appendChild(new_node);
      return false;
    },

    less_children: function() {
      if ($('childs_container').childNodes.length == 0) { return false; }
      var last_node = $('childs_container').lastChild;
      last_node.parentNode.removeChild(last_node);
      // recheck number of child inputs
      if ($('childs_container').childNodes.length == 0) {
        Element.show($('no_children'));
      }
      return false;
    },

    next: function() {

      /* Error checks */
      var err = false;

      if (!Element.visible($('q_spouse_none'))) {
        var author_spouse_alive = Form.getInputs($('term_form'),'radio','author_spouse_alive').find(function(input){
          return input.checked;
        });

        if (!Field.present($('author_spouse_name'))) {
          Element.show($$('#author_spouse_info .question-error')[0]);
          err = true;

        } else {
          Element.hide($$('#author_spouse_info .question-error')[0]);
        }

        if (!author_spouse_alive || ($F(author_spouse_alive) != 'Yes' && $F(author_spouse_alive) != 'No')) {
          Element.show($$('#author_spouse_info .question-error')[1]);
          err = true;
        } else {
          Element.hide($$('#author_spouse_info .question-error')[1]);
        }
      }

      var child_inputs = $$('#childs_container input');

      var errors = child_inputs.findAll(function(input){
        return ( input.type == 'text' && !Field.present(input) );
      });
      child_inputs.each(function(input){
        Element.hide($(input.parentNode.getElementsByTagName('span')[0]));
      });
      errors.each(function(input){
        Element.show($(input.parentNode.getElementsByTagName('span')[0]));
      });

      if (errors.length || err) { return; }


      /* Done Error Checking, now update data */

      if (Element.visible($('q_spouse_none'))) {
        tot.authors[author_index].spouse = 'none';
      } else {
        tot.authors[author_index].spouse = {
          alive: $F(author_spouse_alive),
          name:  $F($('author_spouse_name'))
        };

      }

      var children = tot.authors[author_index].children;
      while (children.length) { children.pop(); }
      for (var i = 0; i < child_inputs.length; i+=2 ) {
        var child = {};
        child.name = child_inputs[i].value;
        child.alive = child_inputs[i + 1].checked ? 'Yes' : 'No';
        child.grandchildren = [];
        child.grandchildren_set = false;
        children.push(child);
      }
      tot.authors[author_index].children_set = true;

      rebuildFamilyTree(tot.authors);

      if (child_inputs.length == 0) {

        if (!author_alive_next()) {
          showScreen($('submit'));
          submit();
        }

      } else {

        child_index = 0;
        showScreen($('author_grandchildren'), buttons.author_grandchildren.update);

      }
    },
    back: goBack
  },

  author_grandchildren: {

    update: function() {
      Element.update($('author_grandchildren_name_span'), tot.authors[author_index].children[child_index].name);
      Element.update($('author_grandchildren-authorname1'), tot.authors[author_index].name);
      Element.update($('author_grandchildren-authorname2'), tot.authors[author_index].name);
      var g = $('grandchildren_container');
      while(g.childNodes.length) { g.removeChild(g.lastChild); }
      var grandchildren = tot.authors[author_index].children[child_index].grandchildren;
      if (!tot.authors[author_index].children[child_index].grandchildren_set) buttons.author_grandchildren.more_grandchildren();
      for(var i=0; i<grandchildren.length; i++) {
        buttons.author_grandchildren.more_grandchildren();
        var inputs = g.lastChild.getElementsByTagName('input');
        inputs[0].value   = grandchildren[i].name;
        inputs[1].checked = grandchildren[i].alive == 'Yes' ? true : false;
      }
    },

    more_grandchildren: function() {
      // clone node
      Element.hide($('no_grandchildren'));
      var new_node = $('child_name').cloneNode(true);
      new_node.id = '';
      new_node.value = '';
      new_node.className = '';
      new_node.getElementsByTagName('input')[0].value = '';
      Element.hide(new_node.getElementsByTagName('span')[0]);
      $('grandchildren_container').appendChild(new_node);
      return false;
    },

    less_grandchildren: function() {
      if ($('grandchildren_container').getElementsByTagName('input').length == 0) { return false; }
      var last_node = $('grandchildren_container').lastChild;
      last_node.parentNode.removeChild(last_node);
      // recheck number of child inputs
      if ($('grandchildren_container').childNodes.length == 0) {
        Element.show($('no_grandchildren'));
      }
      return false;
    },

    next: function() {

      /* get grandchild inputs */
      var child_inputs = $$('#grandchildren_container input');

      var grandchildren = tot.authors[author_index].children[child_index].grandchildren;
      while(grandchildren.length) { grandchildren.pop() };
      for (var i = 0; i < child_inputs.length; i+=2 ) {
        var grandchild = {};
        grandchild.name = child_inputs[i].value;
        grandchild.alive = child_inputs[i + 1].checked ? 'Yes' : 'No';
        grandchildren.push(grandchild);
      }
      tot.authors[author_index].children[child_index].grandchildren_set = true;
      /* move to next screen */
      child_index++;

      /* must be after child_index++ */
      rebuildFamilyTree(tot.authors);

      /* if no more children left, move to next author */
      if (child_index >= tot.authors[author_index].children.length) {

        /* if no more authors, we're done */
        if (!author_alive_next()) {
          showScreen($('submit'));
          submit();
        }
      }
      /* else, move to next child */
      else {
        showScreen($('author_grandchildren'),buttons.author_grandchildren.update);
      }
    },
    back: function() {
      goBack(function() {
        if ( child_index > 0 ) {
          child_index--;
          buttons.author_grandchildren.update();
        }
      });
    }
  }
}

function totit() {

      /* this looks scary, but its really just selecting all DIVs
         that are children of either the history or screens nodes */

      var s;
      s = $A($('screens').childNodes).findAll(function(n){return(n.tagName == 'DIV');});
      s.each(function(n){
        Element.hide(n);
        var b = n.getElementsByTagName('button');
        for (i = 0; i < b.length; i++) {
          if (b[i].innerHTML == 'Next' || b[i].innerHTML == 'Back') {
            b[i].innerHTML == 'Next' ? Event.observe(b[i], 'click', buttons[n.id].next, true) : Event.observe(b[i], 'click', buttons[n.id].back, true);
          }
        }
      });
      s = $A($('history').childNodes).findAll(function(n){return(n.tagName == 'DIV');});
      s.each(function(n){
        Element.hide(n);
      });
      Element.hide($('loading'));
      Element.removeClassName($('h-familytree'), 'history');
      Element.removeClassName($('screens'), 'invisible');
      Element.removeClassName($('history'), 'invisible');

      /* clear all error divs */
      $$('.question-error').each(function(div){Element.hide(div); });
 
      /* some extra event handlers */
      Event.observe(window,'keypress', keyPress, true);
      Event.observe($('spouse_no'),  'click', buttons.author_spouse_info.spouse_toggle, true);
      Element.hide($('q_spouse_none'));
      Event.observe($('spouse_yes'), 'click', buttons.author_spouse_info.spouse_toggle, true);
      Event.observe($('more_authors'), 'click', buttons.author_names.more_authors, true);
      Event.observe($('less_authors'), 'click', buttons.author_names.less_authors, true);
      Event.observe($('more_children'), 'click', buttons.author_spouse_info.more_children, true);
      Event.observe($('less_children'), 'click', buttons.author_spouse_info.less_children, true);
      Event.observe($('more_grandchildren'), 'click', buttons.author_grandchildren.more_grandchildren, true);
      Event.observe($('less_grandchildren'), 'click', buttons.author_grandchildren.less_grandchildren, true);

      showScreen($(getQueryParams().screen || 'basic'));
}

function keyPress(e) {

  var key = e.keyCode ? e.keyCode : e.charCode;
  var radios = $A(getCurrentScreen().getElementsByTagName('input')).findAll(function(i){ return i.type == 'radio' ? true : false; });
  var next = $A(getCurrentScreen().getElementsByTagName('button')).find(function(b){ return b.innerHTML == 'Next' ? true : false; });
  var back = $A(getCurrentScreen().getElementsByTagName('button')).find(function(b){ return b.innerHTML == 'Back' ? true : false; });

  switch(key) {
    case 110: /* n */
    case 121: /* y */
    case 89: /* Y */
    case 78: /* N */
      if (Event.element(e).type == 'text') { break; }
      var c = String.fromCharCode(key).toLowerCase();
      if (radios.length) {
        radios.each(function(r){
          r.checked = (r.value == (c == 'y' ? 'Yes' : 'No') ? true : false);
        });
        next.click();
      } else if ( c == 'n' ) {
        next.click();
      }
      break;

    case 98: /* b */
    case 66: /* B */
      if (Event.element(e).type == 'text') { break; }
    case 13: /* enter */
      if (Event.element(e).type == 'button') { break; }
      if (String(Event.element(e)).match(/http/)) { break; };
      String.fromCharCode(key).toLowerCase() == 'b' ? back.click() : next.click();
      break;

    default:
  }

}

function getCurrentScreen() { return stack.screens.slice(-1)[0]; }

function filterCharEvent(e) {
  if (e.keyCode > 57) { Event.stop(e); }
}

function nextDateField(e) {
  if (e.keyCode < 48 || e.keyCode > 57) { return; }
  if (Event.element(e).value.length == (Event.element(e).size - 1)) {
    var inputs = $A(Event.element(e).parentNode.childNodes).findAll(function(n){ return n.nodeName.toLowerCase() == 'input' ? true : false; });
    while (inputs[0].id != Event.element(e).id) { inputs.shift(); }
    inputs[1].select();
  }
}

function author_alive_next() {
  for(var i=author_index+1; i<tot.authors.length; i++) {
    if(tot.authors[i].grantor == 'Yes') {
      author_index = i;
      showScreen($('author_alive'),buttons.author_alive.update);
      return true;
    }
  }
  /* SUBMIT HERE OR NO? */
  return false;
}

function strip_ids (node) {
  if (!node.id) { return node; } // IE fix
  node.id = '';
  for(var i=0;i<node.childNodes.length;i++) { strip_ids(node.childNodes.item(i)); }
  return node;
}

function submit() {
  var totform = document.createElement("FORM");
  totform.setAttribute("action", cgi);
  totform.setAttribute("method", "post");
  totform.setAttribute("enctype", "multipart/form-data");
  var data = document.createElement("INPUT");
  data.setAttribute("type","hidden");
  data.setAttribute("name","tot");
  var xml = new XML.ObjTree();
  data.setAttribute("value",xml.writeXML({ "tot" : tot }));
  totform.appendChild(data);
  $('screens').appendChild(totform);
  totform.submit();
}

function goBack(updater) {
  if(stack['screens'].length == 1 || stack['history'].length == 0) { return; }
  hideHistory(stack['history'].pop());
  showScreen(stack.screens.slice(-2)[0],updater);
  stack['screens'].pop();
  stack['screens'].pop();
}

function formatDate(d) {
  return [
    pad((d.getMonth()+1),2),
    pad(d.getDate(),2),
    pad(d.getFullYear(),4)
  ].join('/');
}

function pad(num,digits) {
  var pad = digits - num.toString().length;
  for( var i = 0; i < pad; i++ ) {
    num = '0' + num;
  }
  return num;
}

function focusFirstInput(screen) {
  var inputs = screen.getElementsByTagName('input');
  if (inputs.length) {
    inputs[0].focus();
  }
}

function showScreen(s,updater) {
  if(updater && typeof(updater) != 'function') updater = null;
  var effects = Effect.Queues.get('main');
  if (effects.find(function(e){ return e.options.type == 'hide' ? true : false; })) {
    var efa = effects.toArray();
    while (efa.last().options.type != 'hide') {
      var e = efa.pop();
      e.event('beforeStart');
      e.event('beforeUpdate');
      e.event('afterUpdate');
      e.event('afterFinish');
      e.cancel();
    }
    if (updater) { updater(); }
  } else if (getCurrentScreen()) { hideScreen($(getCurrentScreen()),updater); }
  Effect.Appear(s, {
    type: 'show',
    duration: 1.0,
    queue: {
      position: 'end',
      scope: 'main'
    },
    afterFinish: function(e) { focusFirstInput(e.element); }
  });
  new Effect.ScrollTo(s, {type: 'scroll', duration: 0.75, queue: {position: 'end', scope: 'main'}});
  stack['screens'].push(s);
}

function hideScreen(s,updater) {
  if(updater && typeof(updater) != 'function') updater = null;
  Effect.Fade(s, {
    type: 'hide',
    duration: 0.5,
    queue: {
      position: 'end',
      scope: 'main'
    },
    afterFinish: updater
  });
}

function showHistory(h) {
  Effect.BlindDown(h, {duration: 0.5, queue: {position: 'end', scope: 'history'}});
  stack['history'].push(h);
}

function hideHistory(h) {
  Effect.BlindUp(h, {duration: 0.25, queue: {position: 'end', scope: 'history'}});
}

function rebuildFamilyTree(authors) {
  var x = $('h-familytree');
  hideHistory(x);
  while(x.childNodes.length) { x.removeChild(x.lastChild); }
  for (var i=0; i <= author_index; i++) {
    if (authors[i].grantor != 'Yes') { continue; }
    Element.update($('h-auth-info-ans'), getNameStr(authors[i]));
    addCloned(x,$('h-auth-info'));
    if (i == author_index && getCurrentScreen() == 'author_spouse_info') { continue; }
    if(typeof(authors[i].spouse) == 'object') {
      Element.update($('h-auth-info-spouse-name'), getNameStr(authors[i].spouse));
      addCloned(x,$('h-auth-info-spouse'));
    } else if (authors[i].spouse == 'none') {
      addCloned(x,$('h-auth-info-nospouse'));
    }
    if(authors[i].children && authors[i].spouse != 'unknown') {
      if(authors[i].children.length == 0) {
        addCloned(x,$('h-auth-info-nochildren'));
      }
      for (var j=0; j < authors[i].children.length; j++) {
        Element.update($('h-auth-info-child-ans'), getNameStr(authors[i].children[j]));
        addCloned(x,$('h-auth-info-child'));
        if (i == author_index && j >= child_index ) { continue; }
        if(authors[i].children[j].grandchildren) {
          if (authors[i].children[j].grandchildren.length == 0) {
            addCloned(x,$('h-auth-info-nograndchildren'));
          }
          for (var k=0; k < authors[i].children[j].grandchildren.length; k++) {
            Element.update($('h-auth-info-grandchild-ans'), getNameStr(authors[i].children[j].grandchildren[k]));
            addCloned(x,$('h-auth-info-grandchild'));
          }
        }
      }
    }
  }
  showHistory($('h-familytree'));
}

function fixGlossaryLinks() {
  var onclick = function() {
    var w = popUp(this.href, 'console', 200, 800);
    w.term = this.href.replace(/.*glossary.html#/,'');
    /* w.onload = function() { w.showGlossaryEntry(this.term); }; */
    return false;
  };
  $$('.glossarylink').each(function(a){
    if (!a.href.match(/#/)) {
      a.onclick = function() { popUp(this.href); return false; };
      return;
    }
    a.onclick = onclick;
    // var t = a.href.replace(/.*glossary.html#/,'');
    // terms[t] = '<a class=glossarylink href="' + a.href + '">' + a.innerHTML + '</a><br><br>';
  });
  // var termlist = $('termlist');
  // if (!termlist) return;
  // termlist.innerHTML += $H(terms).values().sort().join("");
  // $A(termlist.childNodes).findAll(function(n) { return String(n).match('http'); }).each(function(a){ a.onclick = onclick; });
}

function showGlossaryEntry(term) {
  $$('#glossary div').each(function(div) {
    if (div.id == term) {
       Element.show(div);
       new Effect.ScrollTo(div, { duration: 0.0 });
    } else {
       Element.hide(div);
    }
  });
}

function fixIntraGlossaryLinks() {

  var onclick = function() {
    var term = this.href.replace(/.*glossary.html#/,'');
    showGlossaryEntry(term);
    return false;
  };
  $$('.glossarylink').each(function(a){
    a.onclick = onclick;
  });
  if (window['term']) showGlossaryEntry(term);
}

var newWin = null;
function popUp(strURL, strType, strHeight, strWidth) {
  if (newWin != null && !newWin.closed) newWin.close();
  var strOptions="";
  if (strType=="console") strOptions="resizable,scrollbars,height="+strHeight+",width="+strWidth;
  if (strType=="fixed")   strOptions="status,height="+strHeight+",width="+strWidth;
  if (strType=="elastic") strOptions="toolbar,menubar,scrollbars,"+ "resizable,location,height="+strHeight+",width="+strWidth;
  newWin = window.open(strURL, 'newWin', strOptions);
  newWin.focus();
  return newWin;
}

function getNameStr(x) {
   var str = x.name;
   if (typeof(x.alive) != 'undefined' && x.alive != 'unknown') { str += (x.alive == 'Yes' ? ' (Living)' : ' (Deceased)'); }
   return str;
}

function addCloned(x,y) {
   var z = x.appendChild(strip_ids(y.cloneNode(true)));
   Element.show(z);
   return z;
}

function getErrorDiv(id) {
  /* we could probably clean this up... */
  return $$('#' + id + ' .question-error').first();
}

function calculateCopyrightDate(create, publish) {
  if (create >= 1978) {
    return create;
  } else if (publish < 1978) {
    return publish;
  } else {
    /* split create pre 1978, publish after 1978... */
    return 1978;
  }
}

function calculateTerminationWindow() {

  /* Determine Notice and Termination Windows */
  if (dates.grant >= 1978) {
    tot.type = '203';

    /*
    ## ***This is not entirely accurate*** ##
    ## This is an estimation that ignores publication date
    ## which is needed to calculate the actual Notice/Termination windows
    ##
    ## For simplicity, we make all 203 terminations overinclusive (none are underinclusive)
    ## depending on publication date, the termination window could open anywhere from
    ## 35 to 40 years after the grant date, and could close somewhere between 40 and 45 years
    ## after the grant date.  To accommodate all possible terminations without using publication
    ## date, we give all 203 terminations a 35-45 termination window (which is 5 years to big in all cases)
    ## The notice requirements are the same, regardless of publication, so we'll use a notice window
    ## of 25-43 years (termination requires between 10 and 2 years notice).
    */

    /* (approx) Termination window is 35-45 years after grant date */
    dates.twopen = dates.grant + 35;
    dates.twclose = dates.grant + 45;

    /* (approx) Notice window is 25-43 years after grant date */
    dates.nwopen = dates.grant + 25;
    dates.nwclose = dates.grant + 43;

  /*
  ## If the grant is before 1978, then we look for either 304(c) or 304(d) termination
  ##  304(d) came about under the Sonny Bono Copyright Term Extension Act, and sets a hard deadline
  ##  at Oct 27, 1939 ( 59 years before the effective date of the CTEA - when notice windows closed )
  */

  /* So if the copyright date is on or after 10/27/1939 , we're in 304(c) land */
  /* because we're only asking the year, though, we'll call everything in 1939 304(d) and flag it for the clinic */
  } else if ( dates.copyright > 1939 ) {

    tot.type = '304(c)';

    /* Termination window is 56-61 years after the copyright date */
    dates.twopen  = dates.copyright + 56;
    dates.twclose = dates.copyright + 61;

    /* Notice window is 46-59 years after the dates.copyright date */
    dates.nwopen  = dates.copyright + 46;
    dates.nwclose = dates.copyright + 59;

  /*
  ## The grant is before 1978 and the copyright is on or before 10/26/1939
  ## so this has to be a 304(d) termination
  ## Should add check for >=1923 (and <=1969, but that check is redundant)
  */
  } else {

    tot.type = '304(d)';

    /* Termination windown is 75-80 years after the copyright date */
    dates.twopen  = dates.copyright + 75;
    dates.twclose = dates.copyright + 80;

    /* Notice window is 65-78 years after the copyright date */
    dates.nwopen  = dates.copyright + 65;
    dates.nwclose = dates.copyright + 78;

  }

  /* format dates */
  tot.twopen  = dates.twopen.toString();
  tot.twclose = dates.twclose.toString();
  tot.nwopen  = dates.nwopen.toString();
  tot.nwclose = dates.nwclose.toString();

}

function getQueryParams() {
  var qs = window.location.href.replace(/^[^\?]+\??/,'');
  var q = {};
  if ( !qs ) { return q };
  var x = qs.split(/[;&]/);
  for (var i=0; i < x.length; i++) {
    var y = x[i].split('=');
    if (!y || y.length != 2 ) { continue };
    q[unescape(y[0])] = unescape(y[1]).replace(/\+/g, ' ');
  }

  return q;
}

function isInteger (s) {
   var i;
   for (i = 0; i < s.length; i++){   
      // Check that current character is number.
      var c = s.charAt(i);
      if (((c < "0") || (c > "9"))) return false;
   }
   // All characters are numbers.
   return true;
}

function daysInFeb (year) {
   return ((year % 4 == 0) ? 29 : 28 );
}

function daysInMonth (month,year) {
   if (month==4 || month==6 || month==9 || month==11) { return 30; }
   else if (month==2) { return daysInFeb(year); }
   else { return 31; }
}

function checkYear(yyyy) {
   var today = new Date();
   if (!isInteger(yyyy)) return false;
   else if (yyyy.length != 4) return false;
   else if (yyyy < 1 || yyyy > today.getFullYear()) return false;
   else return parseInt(yyyy, 10);
}

function checkDate (mm,dd,yyyy) {
   var today = new Date();
   if (!isInteger(mm) || !isInteger(dd) || !isInteger(yyyy)) { return false; }
   else if (mm.length != 2 || dd.length != 2 || yyyy.length != 4) { return false; }
   else if (mm < 1 || mm > 12) { return false; }
   else if (dd < 1 || dd > daysInMonth(mm,yyyy)) { return false; }
   else if (yyyy < 1 || yyyy > today.getFullYear() || ((yyyy == today.getFullYear()) && ((mm > (today.getMonth()+1))) || ((yyyy == today.getFullYear()) && (mm == (today.getMonth()+1)) && (dd > today.getDate()))) ) { return false; }
   else { return new Date(yyyy,mm-1 ,dd); }
}
