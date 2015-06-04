/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.creativecommons.learn.oercloud.store;

import javax.xml.namespace.QName;

import org.creativecommons.learn.oercloud.Curator;
import org.creativecommons.learn.oercloud.Feed;
import org.creativecommons.learn.oercloud.OERCLOUD;
import org.creativecommons.learn.oercloud.Resource;
import org.creativecommons.learn.oercloud.behavior.ContextBehaviorFactory;
import org.creativecommons.learn.oercloud.support.CuratorImpl;
import org.creativecommons.learn.oercloud.support.FeedImpl;
import org.openrdf.elmo.ElmoManager;
import org.openrdf.elmo.ElmoModule;
import org.openrdf.elmo.Entity;
import org.openrdf.elmo.sesame.SesameManagerFactory;
import org.openrdf.repository.Repository;
import org.openrdf.repository.RepositoryException;
import org.openrdf.repository.http.HTTPRepository;

/**
 * 
 * A Repository wrapper that loads and initializes our Elmo bindings.
 * 
 * @author nathan
 */
public class TripleStore {

	private static TripleStore instance = null;

	private Repository repository;

	private ElmoModule elmo;
	private SesameManagerFactory factory = null;

	protected static Repository createRepository() {
		
		String sesameServer = "http://localhost:8080/openrdf-sesame";
		String repositoryID = "oercloud";

		return new HTTPRepository(sesameServer, repositoryID);
	}

	public static TripleStore get() {

		if (instance == null) {
			try {
				instance = new TripleStore(createRepository());
			} catch (RepositoryException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return instance;
	}

	protected TripleStore(Repository repository) throws RepositoryException {

		this.repository = repository;
		this.repository.initialize();

		// initialize Elmo
		elmo = this.createModule();
	}

	/**
	 * Create and initialize an ElmoModule with interesting roles. The returned
	 * module can then be scoped to a context, etc.
	 * 
	 * @return ElmoModule
	 */
	public ElmoModule createModule() {

		ElmoModule module = new ElmoModule();

		// core Roles
		module.addRole(Curator.class);
		module.addRole(Feed.class);
		module.addRole(Resource.class);

		// Behavior classes
		module.addRole(CuratorImpl.class);
		module.addRole(FeedImpl.class);

		module.addFactory(ContextBehaviorFactory.class, OERCLOUD.Curator);
		module.addFactory(ContextBehaviorFactory.class, OERCLOUD.Feed);

		return module;
	} // createModule

	public Repository getRepository() {
		return repository;
	}

	/*
	 * public RepositoryConnection getConnection() { try { return
	 * this.repository.getConnection(); } catch (RepositoryException ex) {
	 * Logger.getLogger(TripleStore.class.getName()).log(Level.SEVERE, null,
	 * ex); }
	 * 
	 * return null;
	 * 
	 * } // getConnection
	 */
	public ElmoManager getElmoManager() {

		return this.getManagerFactory().createElmoManager();

	}

	public ElmoManager getElmoManager(ElmoModule module) {
		return this.getManagerFactory(module).createElmoManager();
	}

	public ElmoManager getElmoManager(QName context) {

		ElmoModule module = this.createModule();
		module.setGraph(context);

		return this.getElmoManager(module);

	}

	public SesameManagerFactory getManagerFactory() {

		if (this.factory == null) {
			// create a new factory
			factory = new SesameManagerFactory(elmo, repository);
		}

		return factory;
	}

	public SesameManagerFactory getManagerFactory(ElmoModule module) {

		return new SesameManagerFactory(module, this.getRepository());

	}

	/*
	 * public boolean exists(Class<?> object_class, String url) {
	 * 
	 * Entity entity = TripleStore.get().getElmoManager().find(new QName(url));
	 * 
	 * try { object_class.cast(entity); return true; } catch (ClassCastException
	 * e) { }
	 * 
	 * return false; }
	 */

	public boolean exists(String context, Class<?> object_class, String url) {

		ElmoModule ctx_module = this.createModule();
		ctx_module.setGraph(new QName(context));

		Entity entity = this.getElmoManager(ctx_module).find(new QName(url));

		try {
			object_class.cast(entity);
			return true;
		} catch (ClassCastException e) {
		}

		return false;
	}

	public Entity find(String context, String identifier) {

		ElmoModule ctx_module = this.createModule();
		if (context != null)
			ctx_module.setGraph(new QName(context));

		return this.getElmoManager(ctx_module).find(new QName(identifier));

	}

} // TripleStore
