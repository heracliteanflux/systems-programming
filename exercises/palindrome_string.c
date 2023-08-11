#include <stdio.h>
#include <string.h>

int main () {
	char str[100];
	int i, j, isPalindrome = 1;
	printf("Enter a string: ");
	gets(str);
	j = strlen(str) - 1;
	for (i = 0; i < j; i++, j--) {
		if (str[i] != str[j]) {
			isPalindrome = 0;
			break;
		}
	}
	if (isPalindrome == 1) {
		printf("Palindrome");
	}
	else {
		printf("Not Palindrome");
	}
	return 0;
}