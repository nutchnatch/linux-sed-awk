##### sed ####
$ sed ' p ' /etc/passwd --> print the content of the file
$ sed -n ' p ' /etc/passwd --> suppress the standard output (only matched lines display)
$ sed -n '1,3 p ' /etc/passwd --> add ranges - print only 3 lines
$ sed -n '/^root/ p ' /etc/passwd --> print only lines beginning with root
$ sed -n '5,$ p ' test --> start from line 5 until the end of the document
$ sed -n '/^a/ p ' test --> start with letter a
$ sed -n '/^a[0-9]/ p ' test --> start with letter a and followed by a number


## sed substitute ##
#it is the search and replace tool
$ sed ' [range] s/<string>/<replacement>/ ' /etc/passwd --> s-> substitute command; /->delimiter string->word to be searched; replacement-> to replace the searched word
$ sed ' /^gretchen/ s@/bin/bash@/bin/sh@ ' /etc/passwd --> look at lines that begins with "gretchen", search for /bin/bash and replace with /bin/sh - delimiter is @. If we used / instead of @ we would have to escape the /. If we want to replace more than one per line, we use the 'g' option

$ nl parse-csv-file.sh  --> show lines numbering
$ sed ' 6,8 s/^/    /g' parse-csv-file.sh --> i+ndent lines from 6 to 9
$ sed -n ' 6,8 s/^/              /p' parse-csv-file.sh --> show the match lines
$ sed -n ' /^_www/ s@/usr/bin/@bin/sh@p ' /etc/passwd --> search for lines starting by _www, and replace /usr/bin by bin/sh

##append, insert and delete ##
# append #
$ sed ' /^server 3/ a server server ntp,example.com' /etc/ntp.conf -->look the line beginning with "server 3", add a line afterward (a): server ntp,example.com; 
$ sed ' /^server 0/ i server server ntp,example.com' /etc/ntp.conf --> same example but here inserting a new line above (i)
$ sed ' /^server\[0-9]\.ubuntu/ d' /etc/ntp.conf  --> deletes lines that begins with server and a space (\s) followed by a single line (we scape the dot)
 $ sed ' {
> /^server 0/i server ntp.exampole.com
> /^server\s[0-9]/
> }' /etc/ntp.conf.  --> add multiple operaions in the same command






