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

# Print the final results
echo "Script failed after $run_count runs"
echo "Combined output from all runs:"
echo "$combined_output"

find "$(pwd)" -type f -name "*.html" | xargs zip html_files.zip