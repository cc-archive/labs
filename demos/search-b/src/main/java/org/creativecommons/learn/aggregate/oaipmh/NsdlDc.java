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

public class NsdlDc extends OaiMetadataFormat implements IResourceExtractor {

	public NsdlDc(MetadataFormat f) {
		super(f);
	}
	
	@Override
	public void process(Feed feed, OaiPmhServer server, String identifier)
			throws OAIException {

/*
 *
         <nsdl_dc:nsdl_dc xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:dct="http://purl.org/dc/terms/" xmlns:nsdl_dc="http://ns.nsdl.org/nsdl_dc_v1.02/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" schemaVersion="1.02.000" xsi:schemaLocation="http://ns.nsdl.org/nsdl_dc_v1.02/ http://ns.nsdl.org/schemas/nsdl_dc/nsdl_dc_v1.02.xsd">
          <dc:identifier xsi:type="dct:URI">http://content.nsdl.org/wbr/Issue.php?issue=58</dc:identifier>
          <dc:identifier>Whiteboard Report, 58, August 2004, News</dc:identifier>

          <dc:relation xsi:type="dct:URI">http://nsdl.org/</dc:relation>
          <dc:type xsi:type="dct:DCMIType">Text</dc:type>
          <dc:format>plain</dc:format>
          <dc:language xsi:type="dct:RFC3066">en</dc:language>
          <dct:audience>Undergraduate</dct:audience>
          <dct:audience>Graduate</dct:audience>

          <dct:audience>Research</dct:audience>
          <dct:audience>Lifelong Learner</dct:audience>
          <dc:description>August 2004-- The May 20, 2004 NSDL Senate staff briefing in D.C. yielded interest from the New York delegation in finding out what a phenomenon like NSDL could do to help economically challenged schools address known issues such as isolation, lack of time, lack of resources including professional development, and lack of domain knowledge. Discussions around what would it take to engage NYS middle schools as partners for in an NSDL New York State Middle School Pilot Study took place in Boulder on August 5-6, 2004. Ideas for engaging educators were presented by Holly Devaul, DLESE--Teaching Boxes; Len Simutis, ENC--Overview of ENC Services; and Tamara Sumner, DLESE--Strand Maps.Project manager for the NSDL New York State Middle School Pilot Study: Using Technology to Motivate the Reluctant Learner is Sarah Giersch, a consultant based in Chapel Hill NC. who has provided leadership in developing sustainability workshops for the NSDL. Project co-directors are education leaders and digital library specialists Ed Caffarella, Dean, School of Education, State University of New York (SUNY) Cortland, Stephen Danna, Washington, Saratoga, Warren, Hamilton, Essex Board of Cooperative Educational Services (BOCES), Len Simutis, Director, ENC, and James Burger, CI/Columbia.</dc:description>
          <dc:title>NSDL New York State Middle School Pilot Study: Using Technology to Motivate the Reluctant Learner</dc:title>
        </nsdl_dc:nsdl_dc>

 * 
 */
		// Retrieve the resource metadata from the server
		Record oai_record = server.getRecord(identifier, this.format.getPrefix());
		Element metadata = oai_record.getMetadata();
		if (metadata == null) return;
		
		// get the namespace prefix
		metadata.addNamespace("dc",      "http://purl.org/dc/elements/1.1/");
		metadata.addNamespace("dct",     "http://purl.org/dc/terms/");
		metadata.addNamespace("nsdl_dc", "http://ns.nsdl.org/nsdl_dc_v1.02/");
		metadata.addNamespace("xsi",     "http://www.w3.org/2001/XMLSchema-instance");
		
		// load or create the Resource object
		String resource_url = getNodeText(metadata, "//dc:identifier[@xsi:type='dct:URI']");
		System.out.println(resource_url);
		
		if (resource_url == null) return;
		
		Resource item = getResourceInFeed(feed, resource_url);

		// source
		item.setAggregationSource(feed);

		// title
		item.setTitle(getNodeText(metadata, "//dc:title"));

		// creator
		item.getCreators().addAll(getNodesText(metadata, "//dc:creator"));
		
		// subject(s)
		item.getSubjects().addAll(getNodesText(metadata, "//dc:subject"));
		
		// description
		item.setDescription(getNodeText(metadata, "//dc:description"));
		
		// education levels
		item.getEducationLevels().addAll(getNodesText(metadata, "//dct:audience"));
		
		// type(s)
		item.getTypes().addAll(getNodesText(metadata, "//dc:type"));
				
		// see also
		/*
		 * 
		 * XXX!
		 * 
		TripleStore.get().
		try {
			item.getSeeAlso().add(TripleStore.get().load(OaiResource.class, identifier));
		} catch (NotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		*/
		
	}

}
