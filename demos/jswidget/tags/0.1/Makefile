all: template.js template.en_US.js

template.js: gen_template_js.py template.html
	python gen_template_js.py

template.en_US.js:
	ln -s template.js template.en_US.js
