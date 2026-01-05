function fibs(n) {
    if (n === 1) {
        return [0]
    } else if (n == 2) {
        return [0, 1]
    }

    const fibsArray = [0, 1];

    for (i = 2; i < n; i++) {
        const fibsNext = fibsArray[i - 1] + fibsArray[i - 2];
        fibsArray.push(fibsNext)
    }

    return fibsArray
}

console.log("Non recursive: " + fibs(8));

function fibsRec(n) {
    if (n === 1) {
        return [0]
    } else if (n == 2) {
        return [0, 1]
    }

    fibsArray = fibsRec(n - 1)
    fibsArray.push(fibsArray[fibsArray.length - 1] + fibsArray[fibsArray.length - 2])
    return fibsArray;
}

console.log("Recursive: " + fibsRec(8));