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



