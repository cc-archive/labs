package org.creativecommons.learn.oercloud.store;

import org.openrdf.repository.Repository;
import org.openrdf.repository.RepositoryException;
import org.openrdf.repository.sail.SailRepository;
import org.openrdf.sail.memory.MemoryStore;

public class TestStore extends TripleStore {
	
	protected static Repository createRepository() {
		
		return new SailRepository(new MemoryStore());

	}

	protected TestStore(Repository repository) throws RepositoryException {
		super(repository);
	}


}
