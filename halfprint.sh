: 'Task 6. write a condition (if, elif else) so, that it will print just half of words(numbers) from point 5.
'
echo "please enter the name of directory which is to be scanned for files"
read directory

files=$(find $directory -name '*.txt' -or -name '*.doc');

order=1
skip=false
for file in $files;
do
    if [ $skip = false ]; then
      echo -n $order
      echo $file
      skip=true
    else
      skip=false
    fi
    ((order++))
done
