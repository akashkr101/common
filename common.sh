#!/bin/bash

# Get input for branches
read -p "Enter branch names (separated by space): " branches_input

# Get input for word to replace
read -p "Enter the word to replace: " old_word
read -p "Enter the new word: " new_word

# Loop through each branch
for branch in $branches_input
do
    # Checkout the branch
    git checkout $branch

    # Replace the word using sed
    sed -i "s/$old_word/$new_word/g" testing.txt

    # Add the changes
    git add .

    # Commit the changes
    git commit -m "Replace $old_word with $new_word in $branch"
done

git push origin akash
git push origin amit
git push origin shreyas
