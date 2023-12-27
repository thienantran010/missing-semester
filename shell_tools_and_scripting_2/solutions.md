1. `ls -a -c -h`

2. 
```
marco.sh

#!/bin/bash

marco() {
    previous_working_dir="$(pwd)"
    export PREVIOUS_WORKING_DIR="$previous_working_dir"
}

```
```
polo.sh

#!/bin/bash

polo() {
    if [[ -n $previous_working_dir ]]; then
        cd "$previous_working_dir"
    else
        echo "previous working directory not saved to environment. did you run marco.sh?"
    fi
}
```

3. 
```
#!/bin/bash

run_count=0

combined_output=""

run_script() {
    ((run_count++))

    combined_output+="$(./3script.sh 2>&1)"
    return $?
}

while run_script; do
    echo "Runs Completed: $run_count"
done

echo "Script failed after $run_count runs"
echo "Combined output from all runs:"
echo "$combined_output"
```

4. find . -type f -name "*.html" -print0 | xargs -0 zip html_files.zip

5. find . -type f -exec stat --format="%Y %n" {} + | sort -n | tail -n 1 | cut -d' ' -f2-
