package org.creativecommons.learn.oercloud.tools;

import javax.xml.namespace.QName;

import org.creativecommons.learn.oercloud.Curator;
import org.creativecommons.learn.oercloud.Feed;
import org.creativecommons.learn.oercloud.Resource;
import org.creativecommons.learn.oercloud.store.TripleStore;
import org.openrdf.elmo.ElmoManager;
import org.openrdf.elmo.Entity;
import org.openrdf.repository.RepositoryException;

public class ContextTest {

	/**
	 * @param args
	 * @throws RepositoryException
	 */
	public static void main(String[] args) {

		try {
			TripleStore s = TripleStore.get();

			// create two curators, each with a feed
			ElmoManager manager = s.getElmoManager();
			Curator nd_ocw = manager.designate(
					new QName("http://yerler.net/"), Curator.class);
			Feed foo = manager.designate(new QName("http://codesix.com"), Feed.class);
			foo.setCurator(nd_ocw);
			System.out.println(foo.getCurator());
			
			Feed test = nd_ocw.addFeed("http://ocw.nd.edu/rss_all");
			test.setCurator(nd_ocw);
			
			// add a resource
			Resource ndr = test.addResource("http://creativecommons.org");
			ndr.setAggregationSource(test);
			System.out.println(ndr.getSubjects());
			ndr.getSubjects().add("from_nd");
			System.out.println(test.getCurator());
			
			Curator mit_ocw = s.getElmoManager().designate(
					new QName("http://ocw.mit.edu"), Curator.class);
			Feed mit_feed = mit_ocw
					.addFeed("http://ocw.mit.edu/OcwWeb/rss/all/mit-allcourses.xml");
			Resource test2 = mit_feed
					.addResource("http://creativecommons.org");
			test2.getSubjects().add("from_mit");
			test2.getSubjects().add("from_nd");

			Resource test3 = (Resource)test.getContextManager().find(
					new QName("http://creativecommons.org"));
			System.out.println(test3.getSubjects());
			System.out.println(test3.getAggregationSource());
			
			// test retrieval
			Resource cc = (Resource)manager.find(new QName("http://creativecommons.org"));
			System.out.println(cc.getSubjects());
			System.out.println(cc.getAggregationSource());
			
		} catch (Exception e) {
			e.printStackTrace();

		}

	}

}
