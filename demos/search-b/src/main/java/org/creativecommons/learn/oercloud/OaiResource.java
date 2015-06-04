package org.creativecommons.learn.oercloud;

import java.util.Set;

import org.openrdf.elmo.annotations.rdf;

@rdf(OERCLOUD.OaiResource)
public interface OaiResource {

	@rdf(OERCLOUD.aggregationSource)
    public Feed getAggregationSource();
    public void setAggregationSource(Feed aggregationSource);

	@rdf("http://purl.org/dc/terms/subject")
	public Set<String> getSets();
	public void setSets(Set<String> subjects);
	
}
