#!/bin/bash

# Array of branch names
branches=("akash" "amit" "shreyas")

# Word to replace
old_word="DevOps"
new_word="test"

# Loop through each branch
for branch in "${branches[@]}"
do
    # Checkout the branch
    git checkout $branch

    # Replace the word using sed
    sed -i "s/$old_word/$new_word/g" testing.txt

    # Add the changes
    git add testing.txt

    # Commit the changes
    git commit -m "Replace $old_word with $new_word in $branch"
done
