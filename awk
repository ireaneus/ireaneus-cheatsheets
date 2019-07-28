```sh
#### Awk is a programming language which allows easy manipulation of structured data and the generation of formatted reports
#### https://www.thegeekstuff.com/2010/01/awk-introduction-tutorial-7-awk-print-examples/
### Features include
# Awk views a text file as records and fields.
# Like common programming language, Awk has variables, conditionals and loops
# Awk has arithmetic and string operators.
# Awk can generate formatted reports

Awk Working Methodology
1. Awk reads the input files one line at a time.
2. For each line, it matches with given pattern in the given order, if matches performs the corresponding action.
3. If no pattern matches, no action will be performed.
4. In the above syntax, either search pattern or action are optional, But not both.
5. If the search pattern is not given, then Awk performs the given actions for each line of the input.
6. If the action is not given, print all that lines that matches with the given patterns which is the default action.
7. Empty braces with out any action does nothing. It wont perform default printing operation.
8. Each statement in Actions should be delimited by semicolon.

# examples from employee.txt
awk '{print;}' employee.txt
100  Thomas  Manager    Sales       $5,000
200  Jason   Developer  Technology  $5,500
300  Sanjay  Sysadmin   Technology  $7,000
400  Nisha   Manager    Marketing   $9,500
500  Randy   DBA        Technology  $6,000

awk '/Thomas/
> /Nisha/' employee.txt
100  Thomas  Manager    Sales       $5,000
400  Nisha   Manager    Marketing   $9,500

# Awk has number of built in variables. For each record i.e line, it splits the record delimited by whitespace character by default and stores it in the $n variables. If the line has 4 words, it will be stored in $1, $2, $3 and $4. $0 represents whole line. NF is a built in variable which represents total number of fields in a record.
$ awk '{print $2,$5;}' employee.txt
Thomas $5,000
Jason $5,500
Sanjay $7,000
Nisha $9,500
Randy $6,000

$ awk '{print $2,$NF;}' employee.txt
Thomas $5,000
Jason $5,500
Sanjay $7,000
Nisha $9,500
Randy $6,000

$ awk 'BEGIN {print "Name\tDesignation\tDepartment\tSalary";}
> {print $2,"\t",$3,"\t",$4,"\t",$NF;}
> END{print "Report Generated\n--------------";
> }' employee.txt

Name	Designation	Department	Salary
Thomas 	 Manager 	 Sales 	         $5,000
Jason 	 Developer 	 Technology 	 $5,500
Sanjay 	 Sysadmin 	 Technology 	 $7,000
Nisha 	 Manager 	 Marketing 	 $9,500
Randy 	 DBA 	 	 Technology 	 $6,000
Report Generated
--------------

$ awk '$1 >200' employee.txt
300  Sanjay  Sysadmin   Technology  $7,000
400  Nisha   Manager    Marketing   $9,500
500  Randy   DBA        Technology  $6,000


# sum integers from a file or stdin, one integer per line:
printf '1\n2\n3\n' | awk '{ sum += $1} END {print sum}'

# using specific character as separator to sum integers from a file or stdin
printf '1:2:3' | awk -F ":" '{print $1+$2+$3}'

# print a multiplication table
seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'

# To print the 12th column in a grep
grep -i break-in auth.log | awk {'print $12'}

# List of commands you use most often
history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

# Display a block of text
awk '/sudo/,/^$/' host_vars/ussrv860

# Remove duplicate entries in a file without sorting
awk '!x[$0]++' file

# List the number and type of active network connections
netstat -ant | awk '{print $NF}' | grep -v '[a-z]' | sort | uniq -c

# Showbiggest files/directories, biggest first with 'k,m,g' eyecandy
du –max-depth=1 | sort -r -n | awk '{split("k m g",v); s=1; while($1>1024){$1/=1024; s++} print int($1)" "v[s]"\t"$2}'

# from a list that is more than 50 characters long remove the characters
dig -4 www.linuxacademy.com +trace | awk 'length($0)<50'


```


