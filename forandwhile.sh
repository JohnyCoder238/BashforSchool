N=""
# checking user inpu to be an integer
while [[ ! $N =~ ^[0-9]+$ ]]; do
  echo Enter a number up to which adition is to be performed
  read N
done 

# summing odd elements
odd=0;
for ((i=1; i<=N; i+=2))
do
  odd=$((odd+i))
done

# summing even elements
even=0;
for ((i=0; i<=N; i+=2))
do
  even=$((even+i))
done

echo "The sum of even numbers up to $N is: $even"
echo "The sum of odd numbers up to $N is: $odd"

