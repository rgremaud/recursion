function mergeSort(array) { 
    const n = array.length;
    if (n <= 1 ) { 
        return array;
    }

    const mid = Math.round(n/2);
    const leftArray = array.slice(0, mid)
    const rightArray = array.slice(mid);

    const sortedLeft = mergeSort(leftArray);
    const sortedRight = mergeSort(rightArray);

    const sortedArray = merge(array, sortedLeft, sortedRight);

    return sortedArray;
}

function merge(array, sortedLeft, sortedRight) { 
    const leftLength = sortedLeft.length;
    const rightLength = sortedRight.length

    let arrayIndex = 0;
    let leftIndex = 0;
    let rightIndex = 0;

    while ( leftIndex < leftLength && rightIndex < rightLength ) {
        if (sortedLeft[leftIndex] < sortedRight[rightIndex]) {
            array[arrayIndex] = sortedLeft[leftIndex];
            leftIndex += 1;
        } else {
            array[arrayIndex] = sortedRight[rightIndex];
            rightIndex += 1;
        }
        arrayIndex += 1 // may have to nest under both if and else
    }

    while ( leftIndex < leftLength) {
        array[arrayIndex] = sortedLeft[leftIndex];
        leftIndex += 1;
        arrayIndex += 1;
    }

    while ( rightIndex < rightLength ) { 
        array[arrayIndex] = sortedRight[rightIndex];
        rightIndex += 1
        arrayIndex += 1
    }

    return array
}

/*
mergeSort([]) → []
mergeSort([73]) → [73]
mergeSort([1, 2, 3, 4, 5]) → [1, 2, 3, 4, 5]
mergeSort([3, 2, 1, 13, 8, 5, 0, 1]) → [0, 1, 1, 2, 3, 5, 8, 13]
mergeSort([105, 79, 100, 110]) → [79, 100, 105, 110]
*/

console.log(mergeSort([105, 79, 100, 110]))
