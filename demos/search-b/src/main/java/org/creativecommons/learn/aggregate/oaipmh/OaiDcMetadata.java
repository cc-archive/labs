package org.creativecommons.learn.aggregate.oaipmh;


import org.creativecommons.learn.aggregate.IResourceExtractor;
import org.creativecommons.learn.oercloud.Feed;
import org.creativecommons.learn.oercloud.OaiResource;
import org.creativecommons.learn.oercloud.Resource;
import org.creativecommons.learn.oercloud.store.TripleStore;
import org.dom4j.Element;

import se.kb.oai.OAIException;
import se.kb.oai.pmh.MetadataFormat;
import se.kb.oai.pmh.OaiPmhServer;
import se.kb.oai.pmh.Record;

public class OaiDcMetadata extends OaiMetadataFormat implements IResourceExtractor {

/*
	    <element ref="dc:title"/>
	    <element ref="dc:creator"/>
	    <element ref="dc:subject"/>
	    <element ref="dc:description"/>
	    <element ref="dc:publisher"/>
	    <element ref="dc:contributor"/>
	    <element ref="dc:date"/>
	    <element ref="dc:type"/>
	    <element ref="dc:format"/>
	    <element ref="dc:identifier"/>
	    <element ref="dc:source"/>
	    <element ref="dc:language"/>
	    <element ref="dc:relation"/>
	    <element ref="dc:coverage"/>
	    <element ref="dc:rights"/>
*/

	public OaiDcMetadata(MetadataFormat f) {
		super(f);
	}

	@Override
	public void process(Feed feed, OaiPmhServer server, String identifier) throws OAIException {
		
		// Retrieve the resource metadata from the server
		Record oai_record = server.getRecord(identifier, this.format.getPrefix());
		Element metadata = oai_record.getMetadata();
		if (metadata == null) return;

		// get the namespace prefix
		metadata.addNamespace("dc", "http://purl.org/dc/elements/1.1/");
		
		// load or create the Resource object
		String resource_url = getNodeTextAsUrl(metadata, "//dc:identifier");
		if (resource_url == null) return;
		
		Resource item = getResourceInFeed(feed, resource_url);
		item.setAggregationSource(feed);

		// title
		item.setTitle(getNodeText(metadata, "//dc:title"));
		
		// creator
		item.getCreators().addAll(getNodesText(metadata, "//dc:creator"));
		
		// subject(s)
		item.getSubjects().addAll(getNodesText(metadata, "//dc:subject"));
		
		// description
		item.setDescription(getNodeText(metadata, "//dc:description"));
		
		// contributor(s)
		item.getContributors().addAll(getNodesText(metadata, "//dc:contributor"));
		
		// format(s)
		item.getFormats().addAll(getNodesText(metadata, "//dc:format"));
		
		// language(s)
		item.getLanguages().addAll(getNodesText(metadata, "//dc:language"));
		
		// type(s)
		item.getTypes().addAll(getNodesText(metadata, "//dc:type"));
				
		// see also
		/* XXX
		try {
			item.getSeeAlso().add(TripleStore.get().load(OaiResource.class, identifier));
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
	}

}
