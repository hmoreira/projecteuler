// Project Euler Problem 6: Sum square difference
// Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

Console.WriteLine("Project Euler Problem 6: Sum Square Difference");
Console.WriteLine("==============================================");

// Calculate sum of squares: 1² + 2² + 3² + ... + 100²
long sumOfSquares = 0;
for (int i = 1; i <= 100; i++)
    sumOfSquares += i * i;

// Calculate square of sum: (1 + 2 + 3 + ... + 100)²
long sum = 0;
for (int i = 1; i <= 100; i++)
    sum += i;
    
long squareOfSum = sum * sum;

// Calculate the difference
long difference = squareOfSum - sumOfSquares;

Console.WriteLine($"Sum of squares (1² + 2² + ... + 100²): {sumOfSquares:N0}");
Console.WriteLine($"Sum of first 100 natural numbers: {sum:N0}");
Console.WriteLine($"Square of sum: {squareOfSum:N0}");
Console.WriteLine($"Difference: {difference:N0}");
