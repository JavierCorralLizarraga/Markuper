# bash script to automate the generation of the markdown file and the compilation into pdf with pandoc

# 1. pass the file as a parameter and call it with $1

# 2. run the perl script with the file to translate it
perl trans.pl "$1" 

# 4. call pandoc to compile the markdown into pdf
# todavia no sabemos si queremos compilarlo a pdf cada vez
# quiza jale previewearlo
# pandoc -s -o $1.pdf $1.md


