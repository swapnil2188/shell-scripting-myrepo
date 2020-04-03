#!/usr/bin/perl
								#The previous line must be at the beginning of all Perl scripts
print "\nPlease enter a possible palindrome: ";			#Prompt the user for a palindrome

chomp ( $palindrome = <STDIN> );				#Delete the "Enter" from the end of the inputted word

@palindrome = split( //, $palindrome );				#Take the palindrome and put each letter into an array

@backwards = reverse( @palindrome );				#Reverse the array of letters so it is backwards

$sizeOfPalindrome = @palindrome;				#Find the size of the palindrome
								#Loop through the two arrays and see if the word is 	
for( $i = 0; $i < $sizeOfPalindrome; $i++ )			#the same backwards as it is forward
{
	if( @palindrome[$i] ne @backwards[$i] )
	{							 #If any of the letters do not match then the loop is broken	
		$pali = "";
		last;
	}
	else
	{
		$pali = "true";
	}
} 
if( $pali )							# If the variable $pali from above is true then all of the
{
	print "\n\"$palindrome\" is a palindrome\n";		# words matched and the word entered is a palindrome
}
else								# Otherwise the word entered was not a palindrome	
{
	print "\n\"$palindrome\" is NOT a palindrome\n";
}
