package org.creativecommons.learn.oercloud.support;

import javax.xml.namespace.QName;

import org.creativecommons.learn.oercloud.Curator;
import org.creativecommons.learn.oercloud.Feed;

public abstract class CuratorImpl implements Curator {

	public Feed addFeed(String URL) {
				
		Feed feed = this.getContextManager().designate(new QName(URL), Feed.class);		
		feed.setCurator(this);
		feed.setEnabled(false);
		
		return feed;
		
	} // addFeed

} // CuratorSupport
