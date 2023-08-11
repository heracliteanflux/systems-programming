#include <stdio.h>

int main () {
	int num, reversedNum = 0, originalNum, remainder;
	printf("Enter a number: ");
	scanf("%d", &num);
	originalNum = num;
	while (num != 0) {
		remainder   = num % 10;
		reversedNum = reversedNum * 10 + remainder;
		num /= 10;
	}
	if (originalNum == reversedNum) {
		printf("Palindrome");
	}
	else {
		printf("Not Palindrome");
	}
	return 0;
}