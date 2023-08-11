### `sum_two_integers.c`

```
gcc sum_two_integers.c -o sum_two_integers &&
./sum_two_integers
```
```
Enter the first number: 1
Enter the second number: 1
The sum is: 2
```

```c
#include <stdio.h>

int main () {
	int num1, num2, sum;
	printf("Enter the first number: ");
	scanf("%d", &num1);
	printf("Enter the second number: ");
	scanf("%d", &num2);
	sum = num1 + num2;
	printf("The sum is: %d", sum);
	return 0;
}
```

### `pos_neg_zero_check.c`

```
gcc pos_neg_zero_check.c -o pos_neg_zero_check &&
./pos_neg_zero_check
```
```
Enter a number: 3.14159
Positive
```

```c
#include <stdio.h>

int main () {
	int num;
	printf("Enter a number: ");
	scanf("%d", &num);
	if      (num > 0) {
		printf("Positive");
	}
	else if (num < 0) {
    printf("Negative");
	}
	else {
		printf("Zero");
	}
	return 0;
}
```

### `largest_of_three_numbers.c`

```
gcc largest_of_three_numbers.c -o largest_of_three_numbers &&
./largest_of_three_numbers
```
```
Enter the first number: 1
Enter the second number: 2
Enter the third number: 3
The largest number is: 3
```

```c
#include <stdio.h>

int main () {
	int num1, num2, num3, largest;
	printf("Enter the first number: ");
	scanf("%d", &num1);
	printf("Enter the second number: ");
	scanf("%d", &num2);
	printf("Enter the third number: ");
	scanf("%d", &num3);
	largest = num1;
	if (num2 > largest) {
		largest = num2;
	}
	if (num3 > largest) {
		largest = num3;
	}
	printf("The largest number is: %d", largest);
	return 0;
}
```

### `fibonacci.c`

```
gcc fibonacci.c -o fibonacci &&
./fibonacci
```
```
Enter the value of n: 25
Fibonacci series up to 25: 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368
```

```c
#include <stdio.h>

int main () {
	int n, first = 0, second = 1, next;
	printf("Enter the value of n: ");
	scanf("%d", &n);
	printf("Fibonacci series up to %d: ", n);
	for (int i = 0; i < n; i++) {
		printf("%d ", first);
		next   = first + second;
		first  = second;
		second = next;
	}
	return 0;
}
```

### `prime_check.c`

```
gcc prime_check.c -o prime_check &&
./prime_check
```
```
Enter a number: 17
Prime
```

```c
#include <stdio.h>

int main () {
	int num, isPrime = 1;
	printf("Enter a number: ");
	scanf("%d", &num);
  for (int i = 2; i <= num / 2; i++) {
		if (num % i == 0) {
			isPrime = 0;
			break;
		}
	}
	if (isPrime == 1) {
		printf("Prime");
	}
	else {
		printf("Not Prime");
	}
	return 0;
}
```

### `factorial.c`

```
gcc factorial.c -o factorial &&
./factorial
```
```
Enter a number: 25
Factorial of 25 is 2076180480
```

```c
#include <stdio.h>

int main () {
  int n, factorial = 1;
	printf("Enter a number: ");
	scanf("%d", &n);
	for (int i = 1; i <= n; i++) {
		factorial *= i;
	}
	printf("Factorial of %d is %d", n, factorial);
	return 0;
}
```

### `palindrome.c`

```
gcc palindrome.c -o palindrome &&
./palindrome
```
```
Enter a number: 123454321
Palindrome
```

```c
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
```

### `sum_natural_numbers.c`

```
gcc sum_natural_numbers.c -o sum_natural_numbers &&
./sum_natural_numbers
```
```
Enter a number: 25
The sum of natural numbersup to 25 is 325
```

```c
#include <stdio.h>

int main () {
	int n, sum = 0;
	printf("Enter a number: ");
	scanf("%d", &n);
	for (int i = 1; i <= n; i++) {
		sum += i;
	}
	printf("The sum of natural numbersup to %d is %d", n, sum);
	return 0;
}
```

### `factorial_recursive.c`

```
gcc factorial_recursive.c -o factorial_recursive &&
./factorial_recursive
```
```
Enter a number: 25
Factorial of 25 is 207618048
```

```c
#include <stdio.h>

int factorial (int n) {
	if (n == 0) {
		return 1;
	}
	else {
		return n * factorial(n - 1);
	}
}

int main () {
	int num;
	printf("Enter a number: ");
	scanf("%d", &num);
	printf("Factorial of %d is %d", num, factorial(num));
	return 0;
}
```

### `palindrome_string.c`

```
gcc palindrome_string.c -o palindrome_string &&
./palindrome_string
```
```
Enter a string: rotator
Palindrome
```

```c
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
```

### `min_max_array.c`

```
gcc min_max_array.c -o min_max_array &&
./min_max_array
```
```
Minimum element: 2
Maximum element: 10
```

```c
#include <stdio.h>

void findMinMax (int arr[], int size) {
	int i;
	int min = arr[0];
	int max = arr[0];

	for (i = 1; i < size; i++) {
		if (arr[i] < min) {
			min = arr[i];
		}
		if (arr[i] > max) {
			max = arr[i];
		}
	}

	printf("Minimum element: %d\n", min);
	printf("Maximum element: %d\n", max);
}

int main () {
	int arr[] = {10, 5, 8, 2, 7};
	int size  = sizeof(arr) / sizeof(arr[0]);
	findMinMax(arr, size);
	return 0;
}
```

### `second_largest.c`

```
gcc second_largest.c -o second_largest &&
./second_largest
```
```
Second largest element: 10
```

```c
// second_largest.c
//   find the second largest element in an array
//   the array must contain at least two unique elements

#include <stdio.h>

int findSecondLargest (int arr[], int size) {
	int i, temp;
	int largest       = arr[0];
	int secondLargest = arr[1];

	for (i = 1; i < size; i++) {
		if (arr[i] > largest) {
			secondLargest = largest;
			largest       = arr[i];
		}
		else if (arr[i] == largest || arr[i] > secondLargest && arr[i] < largest) {
			secondLargest = arr[i];
		}
	}

	return secondLargest;
}

int main () {
  int arr[] = {10, 5, 8, 2, 7};
	int size = sizeof(arr) / sizeof(arr[0]);
	int secondLargest = findSecondLargest(arr, size);
	printf("Second largest element: %d\n", secondLargest);
	return 0;
}
```

### `rotate_array.c`

```
gcc rotate_array.c -o rotate_array &&
./rotate_array
```
```
Rotate array: 45123
```

```c
// rotate_array.c
//   rotate an array to the right by a given number of steps
//   the array size should be greater than the number of steps

#include <stdio.h>

void rotateArray (int arr[], int size, int steps) {
	int i, j;
	int temp;

	for (i = 0; i < steps; i++) {
		temp = arr[size - 1];
		for (j = size - 1; j > 0; j--) {
			arr[j] = arr[j - 1];
		}
		arr[0] = temp;
	}
}

int main () {
	int arr[] = {1, 2, 3, 4, 5};
	int size  = sizeof(arr) / sizeof(arr[0]);
	int steps = 2;

	rotateArray(arr, size, steps);

	printf("Rotate array: ");
	for (int i = 0; i < size; i++) {
		printf("%d", arr[i]);
	}
	printf("\n");

	return 0;
}
```