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

public class OerRecommender extends OaiMetadataFormat implements IResourceExtractor {

	public static String OERR = "oerr";
	public static String OERR_URL = "http://www.oercommons.org/oerr";
	
	public OerRecommender(MetadataFormat f) {

		super(f);
		
	}

	@Override
	public void process(Feed feed, OaiPmhServer server, String identifier) throws OAIException {

		// Retrieve the resource metadata from the server
		Record oai_record = server.getRecord(identifier, this.format.getPrefix());
		Element metadata = oai_record.getMetadata();
		if (metadata == null) return;
		
		metadata.addNamespace(OERR, OERR_URL);

		// get a handle to the resource
		Resource resource = this.getResourceInFeed(feed, this.getNodeText(metadata, "//oerr:url"));
		
		// add source information
		resource.setAggregationSource(feed);
		
		// title, description
		resource.setTitle(this.getNodeText(metadata, "//oerr:title"));
		resource.setDescription(this.getNodeText(metadata, "//oerr:abstract"));
		
		// keywords / subjects
		resource.getSubjects().addAll(
				this.getNodesText(metadata, "//oerr:keywords/oerr:keyword"));
		
		// see also
		/* XXX
		try {
			resource.getSeeAlso().add(TripleStore.get().load(OaiResource.class, identifier));
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/

	}

}
