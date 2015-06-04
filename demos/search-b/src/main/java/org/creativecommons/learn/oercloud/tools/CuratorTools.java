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
import org.openrdf.elmo.Entity;
import org.openrdf.repository.RepositoryException;

/**
 * 
 * @author nathan
 *
 */
public class CuratorTools {

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

        Option url = OptionBuilder.withArgName("url").hasArg().withDescription(
                "The URL of the curator to add/edit/remove.").create("url");
        Option name = OptionBuilder.withArgName("name").hasArg().withDescription("Name of the curator to add/edit/remove.").isRequired(false).create("name");

        options.addOption(help);

        options.addOption(add);
        options.addOption(edit);
        options.addOption(remove);
        options.addOption(list);

        options.addOption(url);
        options.addOption(name);

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
            formatter.printHelp("curator", getOptions());

            System.exit(0);
        }

        // see what action we're taking
        if (line.hasOption("add")) {
            try {
                // adding
                add(line);
            } catch (RepositoryException ex) {
                Logger.getLogger(CuratorTools.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else if (line.hasOption("edit")) {
            try {
                // editing
                edit(line);
            } catch (RepositoryException ex) {
                Logger.getLogger(CuratorTools.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (line.hasOption("remove")) {
            try {
                // deleting
                remove(line);
            } catch (RepositoryException ex) {
                Logger.getLogger(CuratorTools.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if (line.hasOption("list")) {
            try {
                list(line);
            } catch (RepositoryException ex) {
                Logger.getLogger(CuratorTools.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            // no action specified
            System.err.println("No action specified; use -list, -add, -edit or -remove.");
            System.exit(1);
        }


    } // public static void main

    protected static void add(CommandLine line) throws RepositoryException {

        if (!line.hasOption("url")) {
            System.err.println("You must specify the URL of the curator.");
            System.exit(1);
        }

        // connect to the triple store
        TripleStore s = TripleStore.get();

        // create the new curator
        Curator curator = s.getElmoManager().designate(new QName(line.getOptionValue("url")),
                Curator.class);
        if (line.hasOption("name")) {
            curator.setName(line.getOptionValue("name"));
        }
        
    } // add
    
    protected static void edit(CommandLine line) throws RepositoryException {
        // connect to the triple store
        TripleStore s = TripleStore.get();


        if (!line.hasOption("url")) {
            System.err.println("You must specify the URL of the curator.");
            System.exit(1);
        }

        // find the existing curator
        Curator curator = (Curator)s.getElmoManager().find(new QName(line.getOptionValue("url")));

        if (line.hasOption("name")) {
            curator.setName(line.getOptionValue("name"));
        }
        
    } // edit
    
    protected static void remove(CommandLine line) throws RepositoryException {
        // connect to the triple store
        TripleStore s = TripleStore.get();

        if (!line.hasOption("url")) {
            System.err.println("You must specify the URL of the curator.");
            System.exit(1);
        }

        // remove the specified curator
        s.getElmoManager().remove(s.getElmoManager().find(new QName(line.getOptionValue("url"))));
        
    } // remove
    
    protected static void list(CommandLine line) throws RepositoryException {
        // connect to the triple store
        TripleStore s = TripleStore.get();

        // list existing curators
        for (Curator c : s.getElmoManager().findAll(Curator.class)) {
            System.out.println( c.getUrl() + " (" + c.getName() + ")");
            
            for (Feed f: c.getFeeds()) {
            	System.out.println("  " + f.getUrl());            	
            }
        }
        
    } // list
}
