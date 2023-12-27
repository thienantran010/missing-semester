2. 

Create a new directory called missing under /tmp.

`cd / && mkdir -p tmp/missing`

3. touch creates an empty file

4. 

Use touch to create a new file called semester in missing.

`touch tmp/missing/semester`

5. 

Write the following into that file, one line at a time:
```
#!/bin/sh
curl --head --silent https://missing.csail.mit.edu
```

`echo '#!/bin/sh' > /tmp/missing/semester && echo 'curl --head --silent https://missing.csail.mit.edu' >> /tmp/missing/semester`

6. Running `ls -l semester` outputs this:
`-rw-r--r-- 1 thienantran010 thienantran010 61 Dec 25 12:15 semester`
Nobody (owner, group, and others) has execute permission

7. You can't directly execute the file, but when you pass it in as an aegument to the `sh` command, you're executing the command which runs the script, bypassing the permissions.

8. `chmod` means change mode and it can change permissions for a file or directory

9. `chmod +x semester` gives everyone execute permissions. The first line `#!/bin/sh` lets the shell know to use sh

10. `./semester | grep "last-modified" | cut --delimiter=" " -f2-6`.
`grep` gets the line with the given text
`cut` lets you choose a delimiter to split the text, and then you select fields 2-6

11. Read battery level: `cat /sys/class/power_supply/BAT1/capacity_level`
Read CPU temperauture: unable(?) because I'm on Windows using WSL