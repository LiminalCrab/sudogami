#!/bin/bash
# Setup: make executable with: chmod +x ./macro.sh
# Usage: customize the template and generate files with: 
# ./macro.sh term1 term2 term3

#src/inc directory
INC='./inc/'

#html templates.
HEAD0='</header>\r<main>'
#DIRECTORY
DIR0='<h3>directory</h3>\r<ul>\r<li><a href="home.html">Home</a></li>\r'
DIR1='\t<li><a href="journal.html">Journal</a></li>\r'
DIR2='\t<li><a href="wiki.html">Wiki</a></li>\r'
DIR3='\t<li><a href="index.html">Index</a></li>\r'
DIR4='</ul>\r'
#PROJECTS
PRJ0='<h3>projects</h3>\r<ul>\r\t<li><a href="https://github.com/LiminalCrab/auger">Auger</a></li>\r'
PRJ1='\t<li><a href="https://github.com/LiminalCrab/starlamp">Starlamp</a></li>\r'
PRJ2='</ul>\r'
#COMMUNITIES
COM0='<h3>communities</h3>\r<ul>\r\t<li><a href="https://merveilles.town/">Merveilles</a></li>\r'
COM1='\t<li><a href="http://infoforcefeed.org/">Infoforcefeed</a></li>\r'
COM2='\t<li><a href="http://www.rooksandkings.com/">Rooks and Kings</a></li>\r'
COM3='</ul>\r'
#WEBRING
RIN0='<h3>Webring</h3>\r<ul>\t<li><a href="https://webring.xxiivv.com/">Webring</a></li>\r</ul>\r'
for var in "$@"
do
    #lmao
    echo -e $HEAD0$DIR0$DIR1$DIR2$DIR3$DIR4$PRJ0$PRJ1$PRJ2$COM0$COM1$COM2$COM3$RIN0 >> $INC$var'.htm'
done
