package org.creativecommons.learn.aggregate.oaipmh;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collection;
import java.util.List;
import java.util.Vector;

import org.creativecommons.learn.aggregate.IResourceExtractor;
import org.creativecommons.learn.oercloud.Feed;
import org.creativecommons.learn.oercloud.Resource;
import org.creativecommons.learn.oercloud.store.TripleStore;
import org.dom4j.Element;
import org.dom4j.Node;

import se.kb.oai.pmh.MetadataFormat;

public abstract class OaiMetadataFormat implements IResourceExtractor{

	protected MetadataFormat format;

	public OaiMetadataFormat(MetadataFormat f) {
		super();

		this.format = f; 

	}

	public Resource getResourceInFeed(Feed feed, String url) {

		Resource result;
		
		if (TripleStore.get().exists(feed.getUrl(), Resource.class, url)) {
			
			result = (Resource)TripleStore.get().find(feed.getUrl(), url);
						
		} else {
			result = feed.addResource(url);
		}
		
		return result;
	}

	protected String getNodeText(Element context, String xpath) {
		List<?> identifiers = context.selectNodes(xpath);
		if (identifiers.size() < 1) return null;
		return ((Node) identifiers.get(0)).getText();
	}

	protected String getNodeTextAsUrl(Element context, String xpath) {
		// Return the first node value we come to which can be interpreted as a URL
		for (String nodetext : getNodesText(context, xpath)) {
			try {
				@SuppressWarnings("unused")
				URL node_url = new URL(nodetext);
				
				// successfully created a URL, return this value
				return nodetext;
				
			} catch (MalformedURLException e) {
				
			}
		}
		
		return null;
	}
	protected Collection<String> getNodesText(Element context, String xpath) {
		
		Vector<String> nodes = new Vector<String>();
		
		List<Node> items = context.selectNodes(xpath);
		
		for (Node item : items) {
			nodes.add(item.getText());
		}
		
		return nodes;
	}

}