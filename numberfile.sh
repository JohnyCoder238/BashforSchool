: 'if you have some files, lets say less than 25 in some directory,  files of 
type *.doc or *.txt, then list all files in this directory with *.txt (*.doc) 
and to each of them assign a number and then print this file and its number
'
echo "please enter the name of directory which is to be scanned for files"
read directory

files=$(find $directory -name '*.txt' -or -name '*.doc');

order=1
for file in $files;
do
    echo -n $order
    echo $file
    ((order++))
done
