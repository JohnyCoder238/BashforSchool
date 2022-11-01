: 'Task 8. Determine the number of files in two directories; next, print which directory contains more files.
'

echo "Enter the first directory to be compared"
read firstdir
echo "Enter the secon directory to be compared"
read secdir

echo "The first directory containes $(ls $firstdir| wc -l) files, the second one containes $(ls $secdir | wc -l) of them"

if [ $(ls $firstdir | wc -l) -gt $(ls $secdir | wc -l) ];then
	echo The first directory containes more files
elif [ $(ls $firstdir | wc -l) -lt $(ls $secdir | wc -l) ]; then
	echo The second directory contains more files
else
	echo The two directories contain the same number of files
fi


