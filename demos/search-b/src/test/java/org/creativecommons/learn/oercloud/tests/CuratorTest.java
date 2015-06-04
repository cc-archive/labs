/**
 * 
 */
package org.creativecommons.learn.oercloud.tests;

import static org.junit.Assert.fail;

import javax.xml.namespace.QName;

import org.creativecommons.learn.oercloud.Curator;
import org.creativecommons.learn.oercloud.Feed;
import org.creativecommons.learn.oercloud.store.TestStore;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

/**
 * @author nathan
 * 
 */
public class CuratorTest {

	/**
	 * @throws java.lang.Exception
	 */
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	/**
	 * @throws java.lang.Exception
	 */
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Test
	public void testAddCurator() {

		// create the new curator
		Curator c = (Curator) TestStore.get().getElmoManager().designate(
				new QName("http://example.org/curator"), Curator.class);
		c.setName("Example Curator");

		// retrieve it from the store		
		Assert.assertNotNull(TestStore.get().find(null, "http://example.org/curator"));
		Curator retrieved = (Curator)TestStore.get().getElmoManager().find(new QName("http://example.org/curator"));
		Assert.assertEquals(retrieved, c);
		
	} // testAddCurator

	/**
	 * Test method for
	 * {@link org.creativecommons.learn.oercloud.support.CuratorImpl#addFeed(java.lang.String)}
	 * .
	 */
	@Test
	public void testAddFeed() {
		
		// create a new curator
		Curator c = (Curator)TestStore.get().getElmoManager().designate(
				new QName("http://example.org/curator"), Curator.class);
		
		// attempt to add a feed
		Feed f = c.addFeed("http://example.org/curator/feed");
		f.setType("rss");
		
	}

}
