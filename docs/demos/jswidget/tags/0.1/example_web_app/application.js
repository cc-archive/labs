/**
 * This was written by CC as a demonstration of how to interoperate
 * with the Creative Commons JsWidget.  No rights reserved.
 * 
 * See README for a little more detail.
 */

function showChosenLicenseURI() {
    alert(document.getElementById("cc_license_chosen").href);
}

function showChosenLicenseName() {
    alert(document.getElementById("cc_license_chosen").firstChild.nodeValue);
}
