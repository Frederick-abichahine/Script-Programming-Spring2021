#!/usr/bin/perl 

$num1= int(rand(9)+1);
$num2= int(rand(9)+1);
$num3= int(rand(9)+1);

$sum= ($num1 + $num2 + $num3);
print($sum);
if ($sum==15){
	print("Sum equal to 15");
}elsif ($sum>15){
	print("Sum greater than 15");
}else{
	print("Sum less than 15");
}
if ($sum%2==0){ 
	print("Sum is even");
}
else {
	print("Sum is odd");
}