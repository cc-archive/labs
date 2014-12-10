YAHOO.namespace("cc.help");

// convenience function for creating help tool tips
YAHOO.cc.help.init_help_item = function(help_anchor) { 

    var link_id = help_anchor.id;
    var help_id = 'help_' + link_id;

    // create the new panel and position it
    var new_panel = new YAHOO.widget.Panel(help_id, 
                            {close: true, 
			     visible: false, 
			     draggable: false, 
			     width:'350px',
			     context:[help_anchor.id,'bl','tl',['beforeShow']],
			     constraintoviewport: true
			    } ); 
    new_panel.rendered = false;

    var item_idx = YAHOO.cc.help.help_panels.push(new_panel) - 1;

    // remove the initial class (used to keep the panel hidden)
    YAHOO.util.Dom.removeClass(help_id, "help_panel");

    // connect the event handlers

    // show the panel on click
    YAHOO.util.Event.addListener(link_id, "click", 
    function(e) {
	YAHOO.cc.help.help_panels[item_idx].show();
	YAHOO.util.Event.stopEvent(e);
    });

    // we subscribe to beforeShow to handle rendering; 
    // rendering at load time causes the final panel to be skipped (wtf?)
    new_panel.beforeShowEvent.subscribe(
        function(e) {
	    if (!this.rendered) {
	        this.render();
		this.rendered = true;
	    }
	});

} // init_help_text

// initialization for help pop-ups
YAHOO.cc.help.init = function() {

    // initialize a container for the panels
    YAHOO.cc.help.help_panels = new Array();

    // find helpLinks and initialize them
    YAHOO.util.Dom.getElementsByClassName('helpLink', 'a', null,
    				     YAHOO.cc.help.init_help_item);
   
} // init

YAHOO.util.Event.onDOMReady(YAHOO.cc.help.init); 
