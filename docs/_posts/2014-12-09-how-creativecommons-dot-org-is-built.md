---
layout: post
title:  "How creativecommons.org is built"
date:   2014-12-10 10:05:34
categories: infrastructure
author:
  login: mattl
  display_as: Matt Lee
  title: Technical Lead
  email: ''
  first_name: ''
  last_name: ''
---
On Tuesday, December 9th 2014 you may have noticed a bit of downtime on creativecommons.org.

This is both an outage report, but also a little insight into how the Creative Commons website is built. I was happily assisted in this work by former technical lead at Creative Commons, Christopher Allen Webber who you may know as one of the developers of GNU MediaGoblin, where he drew me [as a time-travelling goblin](http://mediagoblin.com/u/cwebber/m/machalus-duke-of-time/).

In short, CC's website was down for two reasons:

* An outdated dependency on RDQL, not SPARQL.
* An update to Ubuntu 14.04 LTS installed a version of a Zope library we use.

The Creative Commons website is a mixture of WordPress and several
Python applications. In the near future, we plan to replace the
WordPress portion with Jekyll.

The Python applications are vast, well engineered and easy to find
your way around, even if you're not the best Python programmer (like
me) -- they are: cc.engine, cc.license, i18n and license.rdf.

**cc.engine**

This is the code that handles the license chooser and the display of
licenses on the site. As such, it's pretty important. Chris was able
to see that the program loaded at all by accessing its hidden start-up
message "This is the root" -- [you'll see that here in the views.py file](https://github.com/creativecommons/creativecommons.org/blob/master/python_env/src/cc.engine/cc/engine/views.py).

**cc.license**

This is the code that takes the RDF description of the license (from
license.rdf) and returns it to the chooser or to the license
display. Here's where the code was updated to reflect a change from
RDQL to SPARQL, which are both RDF query
languages. [As noted in the pull request](https://github.com/creativecommons/cc.license/pull/1)
-- "one obscure query language is enough" -- as
[you can see from the source code file](https://github.com/creativecommons/cc.license/blob/master/cc/license/_lib/functions.py),
SPARQL was already in use.

### Future goals

One goal is to make the CC website very easy to people to hack on and make improvements to it. And yes, we're a little way off on that today, but thanks to Chris, I have a better understanding of the site myself now, and I hope to pass that knowledge along with future updates to the site, especially once we move to Jekyll in the new year.

You can check out the [CC website code][cc] for more info on how to recreate the CC website locally. Please help us out by filing any/all bugs/feature requests at [the GitHub repo][cc-gh]. If you have questions, you can ask them on [our dedicated development IRC channel][cc-help].

[cc]:      http://github.com/creativecommons.org
[cc-gh]:   http://github.com/creativecommons.org/issues
[cc-help]: https://wiki.creativecommons.org/IRC
