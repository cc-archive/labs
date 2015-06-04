package org.creativecommons.learn.aggregate.oaipmh;

import java.util.Collection;

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

public class OerSubmissions extends OaiMetadataFormat implements IResourceExtractor {

	public static String OERS = "oers";
	public static String OERS_URL = "http://www.oercommons.org/oers";
	
	public OerSubmissions(MetadataFormat f) {
		super(f);
	}

	@Override
	public void process(Feed feed, OaiPmhServer server, String identifier) throws OAIException {

		// Retrieve the resource metadata from the server
		Record oai_record = server.getRecord(identifier, this.format.getPrefix());
		Element metadata = oai_record.getMetadata();
		if (metadata == null) return;

		metadata.addNamespace(OERS, OERS_URL);

		// get a handle to the resource
		Resource resource = this.getResourceInFeed(feed, this.getNodeText(metadata, "//oers:url"));
		
		// tags/subjects
		Collection<String> tags = this.getNodesText(metadata, "//oers:tags/oers:tag"); 
		resource.getSubjects().addAll(tags);

		// source
		resource.setAggregationSource(feed);
		
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
