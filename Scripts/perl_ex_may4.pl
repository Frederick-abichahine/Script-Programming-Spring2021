#!/usr/bin/perl 

$n=1000;  
print "The prime numbers between 2 and $n are:\n";
for($i=2;$i<=$n;$i++) 
{ 
  for($j=2;$j<$i;$j++) 
  { 
    if(($i%$j)==0) 
    {
      last; 
    } 
  } 
  if($j==$i) 
  { 
    printf "%03d\n", $i; 
  } 
}
