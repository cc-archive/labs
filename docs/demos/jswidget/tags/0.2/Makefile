all: template.js template.en_US.js

template.js: template.en_US.js
	ln -sf template.en_US.js template.js

template.en_US.js: template.html gen_template_js.py
	python gen_template_js.py template.html

clean:
	rm -f template.js template.*.js
