package org.creativecommons.learn.oercloud;

import java.util.Set;

import org.creativecommons.learn.oercloud.behavior.IContextBehavior;
import org.openrdf.elmo.annotations.inverseOf;
import org.openrdf.elmo.annotations.rdf;

@rdf(OERCLOUD.Curator)
public interface Curator extends IContextBehavior {

	@rdf("http://purl.org/dc/terms/title")
	public String getName();
	public void setName(String name);

	@inverseOf(OERCLOUD.hasCurator)
	public Set<Feed> getFeeds();
	
	public Feed addFeed(String URL);

}
