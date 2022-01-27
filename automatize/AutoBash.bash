# bash script to automate the generation of the markdown file and the compilation into pdf with pandoc

# 1. pass the file as a parameter and call it with $1

# 2. run the perl script with the file to translate it
perl -e "$1" # e flag is for checking if the file exists
# 3. create a new file with the same name and 'md' with the translated markdown
# touch $1.md

# 4. call pandoc to compile the markdown into pdf
pandoc -s -o $1.pdf $1.md


