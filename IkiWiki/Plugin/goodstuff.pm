#!/usr/bin/perl
# Bundle of good stuff.
package IkiWiki::Plugin::goodstuff;

use warnings;
use strict;
use IkiWiki 2.00;

my @bundle=qw{
	brokenlinks
	img
	map
	meta
	more
	orphans
	pagecount
	pagestats
	progress
	shortcut
	smiley
	tag
	table
	template
	toc
	toggle
};

sub import { #{{{
	hook(type => "getsetup", id => "goodstuff", call => \&getsetup);
	IkiWiki::loadplugin($_) foreach @bundle;
} # }}}

sub getsetup { #{{{
	return 
		plugin => {
			safe => 1,
			rebuild => undef,
		},
} #}}}

1
