package org.creativecommons.learn.oercloud.tools;

import java.util.logging.Level;
import java.util.logging.Logger;

import javax.xml.namespace.QName;

import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.GnuParser;
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Option;
import org.apache.commons.cli.OptionBuilder;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;
import org.creativecommons.learn.oercloud.Curator;
import org.creativecommons.learn.oercloud.Feed;
import org.creativecommons.learn.oercloud.store.TripleStore;
import org.openrdf.repository.RepositoryException;

/**
 * 
 * @author nathan
 *
 */
public class FeedTools {

    @SuppressWarnings("static-access")
    private static Options getOptions() {

        Options options = new Options();

        Option help = new Option("help", "Print command line arguments");

        Option add = OptionBuilder.withArgName("add").withDescription(
                "Add the specified curator.").isRequired(false).create("add");
        Option edit = OptionBuilder.withArgName("edit").withDescription(
                "Edit the specified curator.").isRequired(false).create("edit");
        Option remove = OptionBuilder.withArgName("remove").withDescription(
                "Remove the specified curator.").isRequired(false).create("remove");
        Option list = OptionBuilder.withArgName("list").withDescription(
                "List existing curators.").isRequired(false).create("list");
                
        Option curator = OptionBuilder.withArgName("curator").hasArg().withDescription(
        		"Set the curator for this feed.").isRequired(false).create("curator");
        Option url = OptionBuilder.withArgName("url").hasArg().withDescription(
                "The URL of the curator to add/edit/remove.").create("url");
        Option type = OptionBuilder.withArgName("type").hasArg().withDescription(
			"The type of this feed [RSS, application/atom+xml, OAI-PMH, OPML]")
			.isRequired(false).create("type");
        Option enabled = OptionBuilder.withArgName("enabled")
        	.withDescription("Set the feed to enabled.").create("enabled");

        options.addOption(help);

        options.addOption(add);
        options.addOption(edit);
        options.addOption(remove);
        options.addOption(list);
        
        options.addOption(curator);
        options.addOption(url);
        options.addOption(type);
        options.addOption(enabled);

        return options;
    }

    /**
     * @param args
     */
    public static void main(String[] args) {
        // create the parser
        CommandLineParser parser = new GnuParser();
        CommandLine line = null;

        try {
            // parse the command line arguments
            line = parser.parse(getOptions(), args);
        } catch (ParseException exp) {
            // oops, something went wrong 
            System.err.println("Parsing failed.  Reason: " + exp.getMessage());
            System.exit(1);
        }

        if (line.hasOption("help")) {
            // automatically generate the help statement
            HelpFormatter formatter = new HelpFormatter();
            formatter.printHelp("feed", getOptions());

            System.exit(0);
        }

        // see what action we're taking
        if (line.hasOption("add")) {
            try {
                // adding
                add(line);
            } catch (RepositoryException ex) {
                Logger.getLogger(FeedTools.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else if (line.hasOption("edit")) {
            try {
                // editing
                edit(line);
            } catch (RepositoryException ex) {
                Logger.getLogger(FeedTools.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (line.hasOption("remove")) {
            try {
                // deleting
                remove(line);
            } catch (RepositoryException ex) {
                Logger.getLogger(FeedTools.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (line.hasOption("list")) {
            try {
                list(line);
            } catch (RepositoryException ex) {
                Logger.getLogger(FeedTools.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            // no action specified
            System.err.println("No action specified; use -list, -add, -edit or -remove.");
            System.exit(1);
        }


    } // public static void main

    protected static void add(CommandLine line) throws RepositoryException {

        if (!line.hasOption("url")) {
            System.err.println("You must specify the URL of the feed.");
            System.exit(1);
        }

        // connect to the triple store
        TripleStore s = TripleStore.get();

        // find the curator so we can get the context
        if (!line.hasOption("curator")) {
        	System.err.println("You must specify the curator for this feed.");
        	System.exit(1);
        }
        
        Curator curator = (Curator)s.getElmoManager().find(new QName(line.getOptionValue("curator")));
        
        // create the feed
        Feed feed = curator.addFeed(line.getOptionValue("url"));

        // set the type if known
        if (line.hasOption("type")) 
        	feed.setType(line.getOptionValue("type"));
        
    } // add
    
    protected static void edit(CommandLine line) throws RepositoryException {
        // connect to the triple store
        TripleStore s = TripleStore.get();


        if (!line.hasOption("url")) {
            System.err.println("You must specify the URL of the curator.");
            System.exit(1);
        }

        // find the existing feed
        Feed feed = (Feed)s.getElmoManager().find(new QName(line.getOptionValue("url")));

        // set the type
        if (line.hasOption("type")) {
        	feed.setType(line.getOptionValue("type"));
        }
        
        if (line.hasOption("curator")) {
        	feed.setCurator((Curator)s.getElmoManager().find(new QName(line.getOptionValue("curator"))));
        }
        
    } // edit
    
    protected static void remove(CommandLine line) throws RepositoryException {
        // connect to the triple store
        TripleStore s = TripleStore.get();

        if (!line.hasOption("url")) {
            System.err.println("You must specify the URL of the feed.");
            System.exit(1);
        }

        // remove the specified feed
        s.getElmoManager().remove(s.getElmoManager().find(new QName(line.getOptionValue("url"))));
        
    } // remove
    
    protected static void list(CommandLine line) throws RepositoryException {
        // connect to the triple store
        TripleStore s = TripleStore.get();

        // list existing feeds
        for (Feed f : s.getElmoManager().findAll(Feed.class)) {
        	System.out.println(f.getUrl());
        }
        
    } // list
}
