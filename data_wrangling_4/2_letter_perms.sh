#!/bin/bash

output_file="2_letter_perms.txt"

> "$output_file"

for first_letter in {a..z}; do
    for second_letter in {a..z}; do
        echo "${first_letter}${second_letter}" >> "$output_file"
    done
done

echo "All lowercase two-letter combinations have been generated and stored in '$output_file'."

