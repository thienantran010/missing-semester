#!/bin/bash

polo() {
    if [[ -n $previous_working_dir ]]; then
        cd "$previous_working_dir"
    else
        echo "previous working directory not saved to environment. did you run marco.sh?"
    fi
}