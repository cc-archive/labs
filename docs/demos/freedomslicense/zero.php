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

$pagetitle = "Freedoms License Generator"; ?>
<? $onload = "redo()"; ?>


<? include_once "../_header.php"; ?>

<script lang="javascript">
function redo() {
  f = document.forms[0];
  if (!f.share.checked) {
    f.sa.checked = false;
    f.sa.disabled = true;
    f.nc.checked = false;
    f.nc.disabled = true;
  } else {
    f.nc.disabled = false;
    if (f.remix.checked) {
      f.sa.disabled = false;
    } else {
      f.sa.checked = false;
      f.sa.disabled = true;
    }
  }
  results();
}
function results() {
  f = document.forms[0];
  if (!f.share.checked) {
    if (!f.remix.checked) {
      document.getElementById('results').innerHTML = "";
    } else {
      display('sampling/1.0', 'Sampling 1.0', 'Remix');
    }
  } else {
    if (!f.remix.checked) {
      if (f.nc.checked) {
        display('by-nc-nd/2.5', 'Attribution-NonCommercial-NoDerivs 2.5', 'Share:NC:ND');
      } else {
        display('by-nd/2.5', 'Attribution-NoDerivs 2.5', 'Share:ND');
      }
    } else {
      if (f.nc.checked) {
        if (f.sa.checked) {
          display('by-nc-sa/2.5', 'Attribution-NonCommercial-ShareAlike 2.5', 'Remix&Share:NC:SA');
        } else {
          display('by-nc/2.5', 'Attribution-NonCommercial 2.5', 'Remix&Share:NC');
        }
      } else if (f.sa.checked) {
          display('by-sa/2.5', 'Attribution-ShareAlike 2.5', 'Remix&Share:SA');
      } else {
          display('by/2.5', 'Attribution 2.5', 'Remix&Share');
      }
    }
  }
}
function display(code, name, aka) {
  document.getElementById('results').innerHTML = "<img src='http://i.creativecommons.org/l/"+code+"/88x31.png'/><br/>"+name+"<br/><small>AKA</small><br/>"+aka;
}
</script>



<div id="content">
  <h2>Freedoms License Generator</h2>

</div>

<form>
<table align="center" cellspacing="40px" border="1">
<tr align="center"><td width="200"><h3>Freedoms</h3></td><td align="center" rowspan="3" width="400"><span id='results'></span></td><td width="200"><h3>Limitations</h3></td></tr>

<tr>
<td align="right">
<img src="http://a2.creativecommons.org/images/deed/share.png" style="float:left"/><br/>
Share <input type="checkbox" name="share" onclick="redo()" checked />


</td>
<td>
<img src="http://a2.creativecommons.org/images/deed/nc.png" style="float:right"/><br/>
<input type="checkbox" name="nc" disabled onclick="results()" /> NonCommercial


</td>
</tr>
<tr>
<td align="right">
<img src="http://a2.creativecommons.org/images/deed/remix.png" style="float:left"/><br/>

Remix <input type="checkbox" name="remix" onclick="redo()" checked />
</td>
<td>
<img src="http://a2.creativecommons.org/images/deed/sa.png" style="float:right"/><br/>
<input type="checkbox" name="sa" disabled onclick="results()" /> ShareAlike
</td>
</tr></table>
</form>



<? include_once "../_footer.php"; ?>
