function factorial(n) {
    
    var sum = 1;
    for (i = 1; i <= n; i++) {
        sum = sum * i;
    }
    
    return sum;
}
