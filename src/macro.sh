#!/bin/bash
# Setup: make executable with: chmod +x ./macro.sh
# Usage: customize the template and generate files with: 
# ./macro.sh term1 term2 term3


#src/inc directory
INC='./inc/'



#html templates.
HEAD0='<main>\r'
DIR0='\t<div class="wiki-content">\r'
DIR1='\t<h3>CONTINUE </h3>\r\r' 
DIR2='\t<span><p></p></span>\r'
DIR3='\t<span><p></p></span>\r\r'
DIR4='\t</div>\r'
DIR5='</div>\r'

for var in "$@"
do
    #lmao
    echo -e $HEAD0$DIR0$DIR1$DIR2$DIR3$DIR4$DIR5 >> $INC$var'.htm'
done
