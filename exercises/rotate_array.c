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