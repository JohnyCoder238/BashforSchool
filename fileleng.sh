: 'Design a script finding files with suffixes *.txt, *.doc, then
prints their lengths and sorts them according to the length (in some
arbitrary directory DIR, i.e., DIR="/tmp".
'
echo "Which directory would you like to search for *.txt and *.doc files?"
read directory

files=$(find $directory -type f -name "*.txt" -or -name "*.doc");

touch tempfile.txt
for file in $files;
do
  echo $(wc -l $file) >> tempfile.txt
done
sort -n -r tempfile.txt

rm -f tempfile.txt
