#!/bin/bash
# Setup: make executable with: chmod +x ./macro.sh
# Usage: customize the template and generate files with: 
# ./macro.sh term1 term2 term3

#src/inc directory
INC='./inc/'

#html templates.
HEAD0='<header>\r\t<p class="pretitle"></p>\r\t</h1>'
HEAD1='</h1>\r\t<p class="posttitle"></p>\r</header>\r<main>\r'
#DIRECTORY
DIR0='<h3>directory</h3>\r<ul>\r<li><a href="/journal/journal.html">Journal</a></li>\r'
DIR1='\t<li><a href="/lexicon/lexicon.html">Lexicon</a></li>\r'
DIR2='\t<li><a href="index.html">Index</a></li>\r'
DIR3='</ul>\r'
#PROJECTS
PRJ0='<h3>project</h3>\r<ul>\r\t<li><a href="https://github.com/LiminalCrab/auger">Auger</a></li>\r'
PRJ1='\t<li><a href="https://github.com/LiminalCrab/starlamp">Starlamp</a></li>\r'
PRJ2='</ul>\r'
#COMMUNITIES
COM0='<h3>communities</h3>\r<ul>\r\t<li><a href="merveilles.town">Merveilles</a></li>\r'
COM1='\t<li><a href="http://infoforcefeed.org/">Infoforcefeed</a></li>\r'
COM2='\t<li><a href="http://www.rooksandkings.com/">Rooks and Kings</a></li>\r'
COM3='</ul>\r</main>'
for var in "$@"
do
    echo -e $HEAD0$var$HEAD1$DIR0$DIR1$DIR2$DIR3$PRJ0$PRJ1$PRJ2$COM0$COM1$COM2$COM3 >> $INC$var'.htm'
done
