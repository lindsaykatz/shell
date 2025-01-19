#!/bin/bash

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
### create a directory to store the homework files
mkdir shell-homework
### make the five directories
mkdir dir1 dir2 dir3 dir4 dir5
### move them into the shell-homework directory
mv dir* shell-homework

# 2. How would you verify the creation of all 5 directories?
### change directories to where the 5 directories exist
cd shell-homework
### list the contents of that directory
ls

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
### create five txt files
touch file1.txt file2.txt file3.txt file4.txt file5.txt

### append "I love data" to each one
echo "I love data" >> *.txt

### copy all files ending in .txt into each directory
cp *.txt dir1/
cp *.txt dir2/
cp *.txt dir3/
cp *.txt dir4/
cp *.txt dir5/

# 4. How would you verify the presence of all 5 files?
### list the contents of each directory
ls dir*

# 5. How would you append to one of the existing files " and machine learning!"?
### example: append " and machine learning!" to third file in first directory
echo " and machine learning!" >> dir1/file3.txt

# 6. How would you verify that the text was indeed appended to the existing file?
cat dir1/file3.txt

# 7. How would you delete all files except for the one with the appended text?
### I would move the file of interest and remove everything else
mv dir1/file3.txt shell-homework/file3.txt

### recursively remove all directories
rm -R dir* 

# 8. How would you navigate back to the parent directory containing all the directories?
cd

# 9. How would you remove each directory along with its contents?
###  recursive remove
# rm -R *

# 10. How would you verify that all directories and files have been deleted?
### relist contents, there should be no output
ls
