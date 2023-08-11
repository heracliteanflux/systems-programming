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