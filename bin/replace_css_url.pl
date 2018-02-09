#!/bin/perl

while (<STDIN>) {
#	print "ORIGIN $_";
#	print "\n";
	s/url\(\"\.\.\/(webfonts.*?)(:?[\?\#](.*?))?\"\)/url\(\"\#\{resource\[\'fontawesome\-free\-jsf\/$1\'\]\}$2\"\)/gs;
	s/url\(\'\.\.\/(webfonts.*?)(:?[\?\#](.*?))?\'\)/url\(\'\#\{resource\[\'fontawesome\-free\-jsf\/$1\'\]\}$2\'\)/gs;
	s/url\(\.\.\/(webfonts.*?)(:?[\?\#](.*?))?\)/url\(\#\{resource\[\'fontawesome\-free\-jsf\/$1\'\]\}$2\)/gs;
	print;
#	print "PROCESSED $_";
#	print "\n\n";
}