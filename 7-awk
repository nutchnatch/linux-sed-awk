$ cat users.awk 
BEGIN { FS=":"; print "Username" } -> FS - file separator | BEGIN begin block
{ print $1 } --> main block
END { print "Total users = " NR } --> NR- number of records. | END end block


BEGIN { FS=":"; print "Username" }
$3 > 499 { print $1 } --> add a range in front of main block
END { print "Total users = " NR }
$ awk -f users.awk /etc/passwd  --> execute the wak file
$ awk -F";" -f users.awk /etc/passwd  --> changing the separator to use ";"
$ awk -F";" -f users.awk /etc/passwd | less --> run with less to see the header

BEGIN { FS=":"; print "Username" }
/^root/{ print $1; count++ } --> count the number of rows starting by root
END { print "Total users = " count }

$ awk -F"," ' { print toupper($1), tolower($2), $3 } ' employees --> add the first column to uppercase and the second to lower case
$ sed 's@\([^,]*\),\([^,]*\)@\U\1\L\2@' --> the same result as above, comparing with sed approach

$ last --> see log in logs
$ last root --> logs for a given user

BEGIN {
printf "%8s %11s\n","Username","Login date"
print "========================"
}
!(/^Never loggedin/ || /^Username/ || /^root/) { --> (!) reverse the condition - we do not want to work with lines with Never Login or with Username or root
count++
if(NF == 8 ) -->NF - Number of fields for each record
        printf "%8s %2s %3s %4s\n", $1,$5,$4,$8 --> format(8 character string, 2 character string, 4 character string)
else
        printf "%8s %2s %3s %4s\n", $1,$5,$4,$9
}
END {
print "Total Number of Users Processed: ", count
}
$ last | awk -f lastlog.awk --> read the output with awk






