package org.creativecommons.learn.aggregate;

import org.creativecommons.learn.oercloud.Feed;

import se.kb.oai.OAIException;
import se.kb.oai.pmh.OaiPmhServer;

public interface IResourceExtractor {

	public void process(Feed feed, OaiPmhServer server, String identifier) throws OAIException;
	
}
