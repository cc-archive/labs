package org.creativecommons.learn.oercloud;

import java.util.Set;

import org.openrdf.elmo.annotations.rdf;

@rdf(OERCLOUD.Resource)
public interface Resource {

    @rdf(OERCLOUD.aggregationSource)
    public Feed getAggregationSource();
    public void setAggregationSource(Feed aggregationSource);

	@rdf("http://purl.org/dc/terms/title")
	public String getTitle();
	public void setTitle(String title);
	
	@rdf("http://purl.org/dc/terms/subject")
	public Set<String>getSubjects();
	public void setSubjects(Set<String> subjects);

	@rdf("http://purl.org/dc/terms/description")
	public String getDescription();
	public void setDescription(String description);

	@rdf("http://purl.org/dc/terms/type")
	public Set<String> getTypes();
	public void setTypes(Set<String> types);
	
	@rdf("http://purl.org/dc/terms/format")
	public Set<String> getFormats();
	public void setFormats(Set<String> formats);
	
	@rdf("http://purl.org/dc/terms/contributor")
	public Set<String> getContributors();
	public void setContributors(Set<String> contributors);
	
	@rdf("http://purl.org/dc/terms/creator")
	public Set<String> getCreators();
	public void setCreators(Set<String> creators);
	
	@rdf("http://purl.org/dc/terms/educationLevel")
	public Set<String> getEducationLevels();
	public void setEducationLevels(Set<String> educationLevels);
	
	@rdf("http://www.w3.org/2000/01/rdf-schema#seeAlso")
	public Set<OaiResource> getSeeAlso();
	public void setSeeAlso(Set<OaiResource> seeAlso);
	
	@rdf("http://purl.org/dc/terms/language")
	public Set<String> getLanguages();
	public void setLanguages(Set<String> languages);
		
}
