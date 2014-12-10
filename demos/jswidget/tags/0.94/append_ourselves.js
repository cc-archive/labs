var my_div = document.createElement('DIV');
my_div.innerHTML = in_string;

var thisScript = /complete.js/;
var theScripts = document.getElementsByTagName('SCRIPT');
for (var i = 0 ; i < theScripts.length; i++) {
    theScripts[i].parentNode.insertBefore(my_div, theScripts[i]);
    theScripts[i].parentNode.removeChild(theScripts[i]);
    break;
}
