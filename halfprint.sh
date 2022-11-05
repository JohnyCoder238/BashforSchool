: 'Task 6. write a condition (if, elif else) so, that it will print only half of words(numbers) from point 5.
'
echo "please enter the name of directory which is to be scanned for files"
read directory

files=$(find $directory -name '*.txt' -or -name '*.doc');

for path in $files;do
  echo Printing half of the contains of the file $path
  file=$(find -wholename $path)
  skip=false
  for word in $(cat $file);do
      if [ $skip = false ]; then
        echo $word
        skip=true
      else
        skip=false
      fi
  done
done
