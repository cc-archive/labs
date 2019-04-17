
/********************

 This is a DHTML rewrite of the Flash Freedoms license chooser 3.0
 http://creativecommons.org/weblog/entry/7252
 
 Challenge done? ;-)
 
 
 Authors:
  * Sylvain ZIMMER <sylvain@jamendo.com>
  * Alex Roberts <alex@creativecommons.org>
  
 License: GPL
 
 ChangeLog:
  * 2007/03/01 : First version
  * 2007/03/15 : Fixed positioning bug, 
                 chooser container can now be placed anywhere on page without ill effect.
  * 2007/03/16 : Ported to ccLabs
 



********************/


var FreedomsChooser;


FreedomsChooserClass = Class.create();

FreedomsChooserClass.prototype = {

	initialize:function(elementPrefix) {
	
	
		this.elementPrefix=elementPrefix;
		
		// Image definitions
		// "Default" location is by-nc-sa
		// Format : "imageId":[defaultX,defaultY,group,DOMElement]
		//
		this.images = $H({
		
			"button-shadow-clean":	[143,162,""],
			
			"nc-piece-normal":		[0,132,"nc"],
			"nc-piece-grey":		[0,132,"nc"],
			"nc-off-x":				[9,332,"nc"],
			//"nc-shadow":			[0,200,"nc"],

			"remix-piece-normal":	[199,0,"remix"],
			//"remix-shadow":		[0,0,"remix"],
			
			"sa-piece-normal":		[132,198,"sa"],
			"sa-piece-grey":		[132,198,"sa"],
			"sa-off-x":				[348,332,"sa"],
			//"sa-shadow":			[0,0,"sa"],
			
			//"share-piece-normal":	[0,0,"share"]
			//"share-shadow":		[0,0,"share"]
			
		});
		
		this.centerLicense = $(this.elementPrefix+"centerLicense");
		this.centerLicense.style.position = "absolute";
		this.centerLicense.style.left = "175px";
		this.centerLicense.style.top = "202px";
		
		
		// How much pixels do we shift the images?
		//
		this.shiftX = 20;
		this.shiftY = 20;
		
		
		// License definitions
		// Format : "licenseId":[shareStatus,remixStatus,ncStatus,saStatus,licenseData]
		// Statuses :  -1 = Unavailable, 0 = Disabled, 1 = Enabled
		//
		this.licenses = $H({
		
			"":			{"share":0,"remix":0,"nc":-1,"sa":-1,"data":false},
			
			"by-nd":	{"share":1,"remix":0,"nc": 0,"sa":-1,"data":['2.5', 'Attribution-NoDerivs','by-nd']},
			"by":		{"share":1,"remix":1,"nc": 0,"sa": 0,"data":['2.5', 'Attribution', 'by']},
			"sampling":	{"share":0,"remix":1,"nc":0,"sa":-1,"data":['1.0', 'Sampling', 'sampling']},
			"nc-sampling+": {"share":0,"remix":1,"nc":1,"sa":-1,"data":['1.0', 'NonCommercial-Sampling Plus', 'nc-sampling+']},
			"by-nc":	{"share":1,"remix":1,"nc": 1,"sa": 0,"data":['2.5','Attribution-NonCommercial','by-nc']},
			"by-nc-sa":	{"share":1,"remix":1,"nc": 1,"sa": 1,"data":['2.5','Attribution-NonCommercial-ShareAlike','by-nc-sa']},
			"by-sa":	{"share":1,"remix":1,"nc": 0,"sa": 1,"data":['2.5', 'Attribution-ShareAlike','by-sa']},
			"by-nc-nd":	{"share":1,"remix":0,"nc": 1,"sa":-1,"data":['2.5','Attribution-NonCommercial-NoDerivs','by-nc-nd']}
			
			
		});
		
	
	
		// Make the dom calls only once.
		//
		this.images.each(function(img) {
			img.value[3]=$(this.elementPrefix+"image_"+img.key);
			
			if ($PNGFIX) {
				_pngfix(img.value[3]);
			}
			img.value[3].style.position="absolute";
			
			//add the shifts to the image coordinates
			img.value[0]+=this.shiftX;
			img.value[1]+=this.shiftY;
			
		}.bind(this));
		
	
	},
	
	setupEventListeners:function() {
	
		this.images.each(function(img) {
			if (img.value[2].length>0) {
				Event.observe(img.value[3],"click",function(event) {
					this.clickEvent(img.key,event);
				}.bindAsEventListener(this));
			}
		}.bind(this));
		
	},
	
	clickEvent:function(imageName,event) {

		var groupName = this.images[imageName][2];
		var loc = Position.cumulativeOffset($("Freedoms_container")); // account for container position
		var scrollLoc = Position.realOffset($("Freedoms_container")); // account for scrolling
		
		loc[0] -= scrollLoc[0];
		loc[1] -= scrollLoc[1];
		
		//The click wasn't made on a piece (off button?). Group must be correct.
		if (imageName.indexOf("piece")==-1) {
			return this.switchGroup(groupName);
		}
		
		var x = event.clientX-parseInt(this.images[imageName][3].style.left) - loc[0];
		var y = event.clientY-parseInt(this.images[imageName][3].style.top) - loc[1];
		
		//console.log(loc);
		//console.log([groupName,x,y]);
		
		//The click was made in an off-limits part of the piece.
		//The pixel coordinates might need some +/- 1px tweaking, not really an issue.
		//
		if (groupName=="share" && this.isInsideRect(x, y, 72, 140, 65, 65)) {
			groupName = "nc";
		} else if (groupName=="share" && x>200 && !this.isInsideRect(x, y, 200, 72, 65, 65)) {
			groupName = "remix";
		} else if (groupName=="remix" && this.isInsideRect(x, y, 0, 72, 65, 65)) {
			groupName = "share";
		} else if (groupName=="remix" && y>200 && !this.isInsideRect(x, y, 72, 200, 65, 65)) {
			groupName = "sa";
		} else if (groupName=="nc" && this.isInsideRect(x, y, 140, 140, 65, 65)) {
			groupName = "sa";
		} else if (groupName=="nc" && y<65 && !this.isInsideRect(x, y, 72, 0, 65, 65)) {
			groupName = "share";
		} else if (groupName=="sa" && this.isInsideRect(x, y, 140, 0, 65, 65)) {
			groupName = "remix";
		} else if (groupName=="sa" && x<65 && !this.isInsideRect(x, y, 0, 72, 65, 65)) {
			groupName = "nc";
		}
		
		
		
		//Click was made in the center of the piece, group is OK
		return this.switchGroup(groupName);
		
	},
	
	isInsideRect:function(clientX,clientY,x,y,width,height) {
	  //console.log(["isInsideRect", clientX, clientY, x, y, x+width, y+height]);
		return (clientX>=x && clientY>=y && clientX<=(x+width) && clientY<=(y+height));
	},
	
	switchGroup:function(groupName) {
		
		var license = Object.clone(this.getCurrentLicense());
		
		//Group is currently unavailable
		if (license[groupName]==-1) {
			return false;
			
		} else if (license[groupName]==0) {
			license[groupName]=1;
		} else if (license[groupName]==1) {
			license[groupName]=0;
			
			// Two special cases when disabling elements :
			
	
			// "remix" and "share" disable "sa"
			if ((groupName=="share") || (groupName=="remix")) {
				license["sa"]=0;
			}
			
			// "nc" disabled if "share" is already disabled and "remix" selected
			if ((groupName=="remix") && (license["share"] == 0)) {
					license["nc"]=0;
			}
			
		}
		
		return this.selectLicense(this.findMatchingLicense(license));
		
		
	},

	findMatchingLicense:function(licenseProperties) {
		var license = this.licenses.find(function(triedLicense) {
			
			return (
				((licenseProperties["nc"]>0)==(triedLicense.value["nc"]>0)) &&
				((licenseProperties["sa"]>0)==(triedLicense.value["sa"]>0)) &&
				((licenseProperties["share"]>0)==(triedLicense.value["share"]>0)) &&
				((licenseProperties["remix"]>0)==(triedLicense.value["remix"]>0))
			);
			
		}.bind(this));
		
		return license.key;
	},
	
	getCurrentLicense:function() {
		return this.licenses[this.currentLicenseId];
	},
	
	selectLicense:function(licenseId) {
		
		
		this.currentLicenseId = licenseId;	
	
		var license = this.getCurrentLicense();



		// Position the images
		//
		this.images.each(function(img) {
			
			
			var isShifted = false;
			var isShown   = true;
			
			var groupStatus = license[img.value[2]];
			
			//The group is unavailable
			if (groupStatus==-1) {
			
				isShifted=true;
				
				if (img.key.indexOf("normal")>=0) isShown=false;
				
				
			//The group is disabled
			} else if (groupStatus==0) {
			
				isShifted=true;
				
				if (img.key.indexOf("off")>=0) isShown=false;
				if (img.key.indexOf("grey")>=0) isShown=false;
				
			//The group is enabled
			} else if (groupStatus==1) {
			
				isShifted=false;
				
				if (img.key.indexOf("off")>=0) isShown=false;
				if (img.key.indexOf("grey")>=0) isShown=false;
				
			}

			
			if (isShown) {
				this.positionImage(img.key,isShifted);
				this.images[img.key][3].show();
			} else {
				this.images[img.key][3].hide();
			}
			
			
		}.bind(this));
		
		if (license.data) {
			this.centerLicense.innerHTML = '<a href="#get_the_code"><img onload="if ($PNGFIX) _pngfix(this)" border="0" src="http://i.creativecommons.org/l/'+licenseId+"/"+license.data[0]+'/88x31.png" alt="'+license.data[1]+'"/></a>';
		
			//$("Freedoms_output").innerHTML = "You selected the <b>"+license.data[1]+" "+license.data[0]+"</b> license.";
			freedoms_update (license);
			//update_hack( license.data[2], license.data[0], license.data[1] );
		} else {
			this.centerLicense.innerHTML = "";
			
			//$("Freedoms_output").innerHTML = "No license selected";
		}
		
	},
	
	positionImage:function(imageName,isShifted) {
		
		var image = this.images[imageName];
		
		var x = image[0];
		var y = image[1];
		
		if (isShifted) {
			if (image[2]=="share") {
				x-=this.shiftX;
				y-=this.shiftY;
			} else if (image[2]=="remix") {
				x+=this.shiftX;
				y-=this.shiftY;
			} else if (image[2]=="nc") {
				x-=this.shiftX;
				y+=this.shiftY;
			} else if (image[2]=="sa") {
				x+=this.shiftX;
				y+=this.shiftY;
			}
		}
			
		image[3].style.left=x+"px";
		image[3].style.top=y+"px";
		
	}


};


var $PNGFIX=false;

