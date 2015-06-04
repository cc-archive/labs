package org.creativecommons.learn.oercloud;

import java.util.Date;
import java.util.Set;

import org.creativecommons.learn.oercloud.behavior.IContextBehavior;
import org.openrdf.elmo.annotations.inverseOf;
import org.openrdf.elmo.annotations.oneOf;
import org.openrdf.elmo.annotations.rdf;

@rdf(OERCLOUD.Feed)
public interface Feed extends IContextBehavior {

	@rdf(OERCLOUD.hasCurator)
	public Curator getCurator();
	public void setCurator(Curator curator);
	
	@rdf("http://purl.org/dc/terms/format")
	public String getType();
	@oneOf(label={"rdf", "atom", "opml", "oai-pmh"})
	public void setType(String type);
	
	@inverseOf(OERCLOUD.aggregationSource)
	public Set<Resource> getResources();
	public void setResources(Set<Resource> resources);
	
	@rdf(OERCLOUD.lastAggregated)
	public Date getLastAggregated();
	public void setLastAggregated(Date lastAggregated);
	
	@rdf(OERCLOUD.isEnabled)
	public boolean isEnabled();
	public void setEnabled(boolean enabled);
	
	public Resource addResource(String URL);
	public OaiResource addOaiResource(String identifier);
}
