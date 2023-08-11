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