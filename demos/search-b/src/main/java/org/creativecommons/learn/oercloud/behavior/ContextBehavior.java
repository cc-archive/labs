package org.creativecommons.learn.oercloud.behavior;

import javax.xml.namespace.QName;

import org.creativecommons.learn.oercloud.store.TripleStore;
import org.openrdf.elmo.ElmoManager;
import org.openrdf.elmo.ElmoModule;

public class ContextBehavior implements IContextBehavior {

	private QName qname;

	public String getUrl() {
		return this.get_QName().getNamespaceURI()
				+ this.get_QName().getLocalPart();
	}

	public QName get_QName() {
		return qname;
	}

	public void setQName(QName base_qname) {
		this.qname = base_qname;
	}

	@Override
	public ElmoManager getContextManager() {

		ElmoModule module = this.getContextModule();
		
		// include the default module
		module.includeModule(TripleStore.get().createModule());
		
		return TripleStore.get().getElmoManager(module);

	}

	@Override
	public ElmoModule getContextModule() {

		ElmoModule module = TripleStore.get().createModule();
		module.setGraph(this.get_QName());

		return module;
	}

}