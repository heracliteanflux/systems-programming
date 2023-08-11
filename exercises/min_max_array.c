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