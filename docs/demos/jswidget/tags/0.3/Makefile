all: check_depends template.en_US.js

check_depends:
	python depends.py


template.en_US.js: template.html gen_template_js.py
	python gen_template_js.py template.html

clean:
	rm -f template.js template.*.js template.js.*
