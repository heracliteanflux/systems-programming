# systems-programming
Exercises in the C programming language with an emphasis on systems.

---

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