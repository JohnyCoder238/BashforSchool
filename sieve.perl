#!/usr/bin/perl
#Sieve of Eratosthenes
$N = 30;   #primes up to 30
@n = ();
#creating the full array from 0 to N
for( $i = 0; $i <=$N; $i++) {
  push(@n, $i);
}

@multiples = ();
#iterating over the array items
for( $p = 2; $p <=$N; $p++) {
   #making multiples of primes to mark them in the bext loop 
   for( $j = 2; $j*$p <= $N; $j++) {
      $multiple = $j * $p;
      push(@multiples, $multiple);
   }
   #marking the multiples with "n"
   foreach (@multiples){
      if ($n[$_] == $_){
        $n[$_] = n}
   }
}
# selecting only those unmarked to be added to @primes
@primes = ();
foreach(@n){
  if ($_ != n){
    push(@primes, $_);}
}
# printing primes
foreach(@primes){print "$_\n";}
