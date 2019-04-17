<?php
/**
 * Creative Commons has made the contents of this file
 * available under a CC-GNU-GPL license:
 *
 * http://creativecommons.org/licenses/GPL/2.0/
 *
 * A copy of the full license can be found as part of this
 * distribution in the file COPYING.
 *
 * You may use this software in accordance with the
 * terms of that license. You agree that you are solely 
 * responsible for your use of this software and you
 * represent and warrant to Creative Commons that your use
 * of this software will comply with the CC-GNU-GPL.
 *
 * $Id: $
 *
 * Copyright 2006, Creative Commons, www.creativecommons.org.
 */

$pagetitle = "Freedoms License Generator - one"; ?>
<? $include = "flg-one.css"; ?>
<? $onload = "init()"; ?>

<? include_once "../_header.php"; ?>

<script lang="javascript">

var share = false;
var remix = false;
var sa = false;
var nc = false;
var sa_on = false;
var nc_on = false;


function init() {
  share = true;
  remix = true;
  
  redo();
}

function redo(mode) {
  
  switch (mode) {
    case "share":
      share = !share;
      break;
    case "remix":
      remix = !remix;
      break;
    case "nc":
      if (nc_on) { nc = !nc; }
      break;
    case "sa":
      if (sa_on) { sa = !sa; }
      break;
    
  }
  
  
  
  if (!share) {
    sa = false;
    sa_on = false;
    nc = false;
    nc_on = false;
    
    document.getElementById('flg-connect-nc').className = "flg-pipe-off";
    document.getElementById('flg-connect-sa').className = "flg-pipe-off";
    document.getElementById('flg-connect-share').className = "flg-pipe-middle";
    
    if (!remix) {
      document.getElementById('flg-connect-remix').className = "flg-pipe-middle";
    } else {
      document.getElementById('flg-connect-remix').className = "flg-pipe-on";
    }
    
  } else {
    nc_on = true;
    
    document.getElementById('flg-connect-share').className = "flg-pipe-on";
    
    if (nc) {
      document.getElementById('flg-connect-nc').className = "flg-pipe-on";
    } else {
      document.getElementById('flg-connect-nc').className = "flg-pipe-middle";
    }
    
    if (remix) {
      sa_on = true;
      
      if (sa) {
        document.getElementById('flg-connect-sa').className = "flg-pipe-on";
      } else {
        document.getElementById('flg-connect-sa').className = "flg-pipe-middle";
      }
      
      document.getElementById('flg-connect-remix').className = "flg-pipe-on";
    } else {
      sa = false;
      sa_on = false;
      document.getElementById('flg-connect-sa').className = "flg-pipe-off";
      document.getElementById('flg-connect-remix').className = "flg-pipe-middle";
    }
  }
    
  results();
}
function results() {
  f = document.forms[0];
  if (!share) {
    if (!remix) {
      document.getElementById('flg-result').innerHTML = "";
      return;
    } else {
      display('sampling/1.0', 'Sampling 1.0', 'Remix');
    }
  } else {
    if (!remix) {
      if (nc) {
        display('by-nc-nd/2.5', 'Attribution-NonCommercial-NoDerivs 2.5', 'Share:NC:ND');
      } else {
        display('by-nd/2.5', 'Attribution-NoDerivs 2.5', 'Share:ND');
      }
    } else {
      if (nc) {
        if (sa) {
          display('by-nc-sa/2.5', 'Attribution-NonCommercial-ShareAlike 2.5', 'Remix&Share:NC:SA');
        } else {
          display('by-nc/2.5', 'Attribution-NonCommercial 2.5', 'Remix&Share:NC');
        }
      } else if (sa) {
          display('by-sa/2.5', 'Attribution-ShareAlike 2.5', 'Remix&Share:SA');
      } else {
          display('by/2.5', 'Attribution 2.5', 'Remix&Share');
      }
    }
  }
}
function display(code, name, aka) {
  document.getElementById('flg-result').innerHTML = "<img src='http://i.creativecommons.org/l/"+code+"/88x31.png'/><br/>"+name+"<br/><small>AKA</small><br/>"+aka;
}
</script>


<div id="content">
  <h2>Freedoms License Generator</h2>
  <p><small>This project requires <em>Javascript</em>. License buttons are not final, and not for use outside of this application.</small></p>

<div id="flg-container">
  <h4 class="freedoms">Freedoms</h4>
<div id="flg-ui">
  <div id="flg-freedoms">
    <div id="flg-f-share"><strong><a href="javascript:redo('share')"><img src="http://a2.creativecommons.org/images/deed/share.png" style="float:left"/><br/>
    Share</a></strong></div>
    <div id="flg-f-remix"><strong><a href="javascript:redo('remix')">Remix<img src="http://a2.creativecommons.org/images/deed/remix.png"/></a></strong></div>
  </div>
  <div id="flg-left">
    <div id="flg-connect-share" class="flg-pipe-on">&nbsp;</div>
    <div id="flg-connect-nc" class="flg-pipe-middle">&nbsp;</div>
  </div>
  <div id="flg-mid">
    <div id="flg-result">BY</div>
  </div>
  <div id="flg-right">
    <div id="flg-connect-remix" class="flg-pipe-on">&nbsp;</div>
    <div id="flg-connect-sa" class="flg-pipe-middle">&nbsp;</div>
  </div>
  
  <div id="flg-conditions">
    <div id="flg-c-nc"><strong><a href="javascript:redo('nc')"><img src="http://a2.creativecommons.org/images/deed/nc.png" style="float:left"/><br/>Non-Commercial</a></strong></div>
    <div id="flg-c-sa"><strong><a href="javascript:redo('sa')">ShareAlike<img src="http://a2.creativecommons.org/images/deed/sa.png"/></a></strong></div>
  </div>
  
  <br clear="all"/>
</div>
<h4 class="conditions">Conditions</h4>
</div>

</div>


<? include_once "../_footer.php"; ?>
