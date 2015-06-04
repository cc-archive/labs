/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package org.creativecommons.learn.oercloud;

/**
 *
 * @author nathan
 */
public class OERCLOUD {

    public static final String base_uri = "http://learn.creativecommons.org/oercloud/";

    // types
    public static final String Curator = base_uri + "Curator";
    public static final String Feed = base_uri + "Feed";
    public static final String Resource = base_uri + "Resource";
    public static final String OaiResource = base_uri + "OaiResource";

    // properties
    public static final String hasCurator = base_uri + "hasCurator";
    public static final String aggregationSource= base_uri + "aggregationSource";

	public static final String lastAggregated = base_uri + "lastAggregated";

	public static final String isEnabled = base_uri + "isEnabled";
}
