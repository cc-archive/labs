package org.creativecommons.learn.oercloud.behavior;

import javax.xml.namespace.QName;

import org.openrdf.elmo.ElmoManager;
import org.openrdf.elmo.ElmoModule;

public interface IContextBehavior {

	public QName get_QName();
	public String getUrl();
	public void setQName(QName qname);
	
	public ElmoModule getContextModule();
	public ElmoManager getContextManager();
	
}
