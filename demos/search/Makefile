# Makefile
#
# This is just a generic driver makefile for the Makefile.language. The poin
# is that one should be able to have this one alongside the master.
#
# This file is used here in accordance with the GNU GPL which is copied in the 
# COPYING file accompanying this file.
#
# Copyright 2006, Creative Commons.
# Copyright 2006, Jon Phillips.
#

all:
	$(MAKE) -f Makefile.language just_mo
	$(MAKE) compile-cc_org-po-files

full:
	$(MAKE) -f Makefile.language all
	$(MAKE) update-po-files
	$(MAKE) all

clean:
	$(MAKE) -f Makefile.language clean 

create-pot: 
	$(MAKE) -f Makefile.language create-pot

update-po-files: 
	$(MAKE) -f Makefile.language update-po-files

check: 
	$(MAKE) -f Makefile.language check

compile-cc_org-po-files:
	for k in cc_org/*; do mkdir -p "$$k/LC_MESSAGES"; done
	for k in cc_org/*/cc_org.po; do msgfmt "$$k" -o "$${k%cc_org.po}"/LC_MESSAGES/cc_org.mo ; done
