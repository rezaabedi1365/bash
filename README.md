
# Text seperator command 

   * [awk](####rd)
     for seperate coloumn
     
   * [sed](####find)
     for seperate raw / select character in word
     
   * [cut](####XCOPY)
     for seperate charachter with devision
     
   * [ grep ](####robocopy)
     for select line with wildcard
     
   * [ head ](####rd&rmdir)
     for select first or lasts line

--------------------------------------------------
### AWK 

```
awk '{ print $8 }'

```

### sed
select line 2 from last command output
```
 | sed -n '2p'

```
seperate last character from las command output
```
| sed 's/.$//'
```

select line 2 from file
```
 sed -n '2p' filename

```

+ sed -n '2p' filename #get the 2nd line and prints the value (p stands for print)

+ sed -n '1,2p' filename #get the 1 to 2nd line and prints the values

+ sed -n '1p;2p;' filename #get the 1st and 2nd line values only


### cut
select part 2 after = devision
```
cut -d= -f2

```

### grep
select line with wildcard
```
ip addr show ens160 | grep inet | grep -v inet6

```

#### head and tail
select first 2 line
```
head -n 2

```
```
tail -n 2

```














