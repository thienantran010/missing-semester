2. `cat /usr/share/dict/words | sed -E 's/^[^a]*a?[^a]*a?[^a]*$//' | sed -E 's/'\''s$//' | wc -l` .
104334 words
`cat /usr/share/dict/words | grep -E '^[^a]*a+[^a]*a+[^a]*a+[^a]*$' | grep -v "'s$" | sed -E 's/.*([a-z]{2})$/\1/' | tr "[:upper:]" "[:lower:]" | sort | uniq -c | sort -n | tail -n3`
     47 as
     50 ns
     77 an

```
cat /usr/share/dict/words | sed -E 's/^[^a]*a?[^a]*a?[^a]*$//' | sed -E 's/'\''s$//' | sed -E 's/.*([a-z]{2})$/\1/' | tr "[:upper:]" "[:lower:]" | sort | uniq > last_letters.txt
./2_letter_perms.sh
diff --changed-group-format="%<" --unchanged-group-format="" 2_letter_perms.txt last_letters.txt
```

3. `output > file` clears the file before putting the output in the file, so `sed s/REGEX/SUBSTITUTION/ input.txt > input.txt` would have input.txt be cleared before performing the RegEx substitutions, and the output would still be an empty file. This isn't a problem solely for `sed`, but anytime you're doing in-place file editing. You can use the `-i` extension to edit files in place.

4. Skipped the rest because I didn't have the file or it was annoying 
