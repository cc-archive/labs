<!--
/**
 * This is the class for CCLibFreedoms which will handle freedom style 
 * license selection.
 */



var CCLibFreedoms = Class.create();

/**
 * Define some events we will trigger.
 */

CCLibFreedoms.prototype = {

    /**
     * This is the constructor which defaults to BY (attribution).
     */
    initialize: function () {
        this._share     = true;
        this._remix     = true;
        this._sa_cond   = false;
        this._nc_cond   = false;
        this._sa_on     = false;
        this._nc_on     = false;

        this.redo();
    },

    redo: function (mode) {
  
        switch (mode) {
            case "share":
                this._share = !this._share;
                break;
            case "remix":
                this._remix = !this._remix;
                break;
            case "nc":
                if (this._nc_on) { this._nc_cond = !this._nc_cond; }
                break;
            case "sa":
                if (this._sa_on) { this._sa_cond = !this._sa_cond; }
                break;
        }
 
      try {

        if (!this._share) 
        {
            this._sa_cond = this._sa_on = this._nc_cond = this._nc_on = false;
    
            Element.classNames ('flg-connect-nc').set ("flg-pipe-off");
            Element.classNames ('flg-connect-sa').set ("flg-pipe-off");
            Element.classNames ('flg-connect-share').set ("flg-pipe-middle");
    
            if (!this._remix) {
                Element.classNames ('flg-connect-remix').set ("flg-pipe-middle");
            } else {
                Element.classNames ('flg-connect-remix').set ("flg-pipe-on");
            }
    
        } else {
            this._nc_on = true;
    
            Element.classNames ('flg-connect-share').set ("flg-pipe-on");
    
            if (this._nc_cond) {
                Element.classNames ('flg-connect-nc').set ("flg-pipe-on");
            } else {
                Element.classNames ('flg-connect-nc').set ("flg-pipe-middle");
            }
    
            if (this._remix) {
                this._sa_on = true;
      
                if (this._sa_cond) {
                    Element.classNames ('flg-connect-sa').set ("flg-pipe-on");
                } else {
                    Element.classNames ('flg-connect-sa').set ("flg-pipe-middle");
                }
      
                Element.classNames ('flg-connect-remix').set ("flg-pipe-on");
            } else {
                this._sa_cond = this._sa_on = false;

                Element.classNames ('flg-connect-sa').set ("flg-pipe-off");
                Element.classNames ('flg-connect-remix').set ("flg-pipe-middle");
            }
        }
      } catch (err) {}
    
        this.results();
    },

    results: function () {
        try {
            some_license_selection(); // This is purely cosmetic.
        } catch (err) {}
        if (!this._share) {
            if (!this._remix) {
                try {
                    Element.update ("flg-result", "");
                    no_license_selection();
                } catch (err) {}
                return;
            } else {
                this.display('sampling', '1.0', 'Sampling', 'Remix');
            }
        } else {
            if (!this._remix) {
                if (this._nc_cond) {
                    this.display('by-nc-nd', '2.5', 
                                 'Attribution-NonCommercial-NoDerivs', 
                                 'Share:NC:ND');
                } else {
                    this.display('by-nd', '2.5', 'Attribution-NoDerivs', 
                                 'Share:ND');
                }
            } else {
                if (this._nc_cond) {
                    if (this._sa_cond) {
                        this.display('by-nc-sa', '2.5', 
                                     'Attribution-NonCommercial-ShareAlike', 
                                     'Remix&Share:NC:SA');
                    } else {
                        this.display('by-nc', '2.5', 
                                     'Attribution-NonCommercial', 
                                     'Remix&Share:NC');
                    }
                } else if (this._sa_cond) {
                    this.display('by-sa', '2.5', 'Attribution-ShareAlike', 
                                 'Remix&Share:SA');
                } else {
                    this.display('by', '2.5', 'Attribution', 'Remix&Share');
                }
            }
        }
    },
    display: function (code, version, name, aka) {
        try {
            update_hack(code, version, name);
            Element.update ("flg-result", "<img src='http://i.creativecommons.org/l/"+code+"/"+version+"/88x31.png'/><br/>" +
            '<br /><i><a href="#get_the_code">Get the Code!</a></i>'); 
        } catch (err) {}

        /*
        document.write( "<p>code: " + code + "</p>" );
        document.write( "<p>version: " + version + "</p>" );
        document.write( "<p>name: " + name + "</p>" );
        document.write( "<p>aka: " + aka + "</p>" );
        document.write( "<hr />" );
        */
    }
}

// var freedomsChooser = new CCLibFreedoms();

// freedomsChooser.redo('share');

/*
Event.initEvent();

try {
Event.observe( window, 'load', freedomsChooser.redo(), false );
}
catch (err)
{} */

// -->
