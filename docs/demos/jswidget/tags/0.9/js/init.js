function cc_js_pageInit() {
    cc_js_init();
    cc_js_init_tip();
}

if (window.onload) {
    old_onload = window.onload;
    window.onload = function () {
	old_onload();
	cc_js_pageInit();
    }
}
else {
    window.onload = cc_js_pageInit;
}

