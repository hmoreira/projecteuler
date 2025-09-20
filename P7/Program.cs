// Project Euler Problem 7: 10001st prime
// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
// What is the 10,001st prime number?

Console.WriteLine("Project Euler Problem 7: 10001st Prime");
Console.WriteLine("======================================");

// Function to check if a number is prime
static bool IsPrime(int number)
{
    if (number < 2) return false;
    if (number == 2) return true;
    if (number % 2 == 0) return false;
    
    // Check odd divisors up to sqrt(number)
    for (int i = 3; i * i <= number; i += 2)
    {
        if (number % i == 0)
            return false;
    }
    
    return true;
}

// Find the 10,001st prime number
int primeCount = 0;
int currentNumber = 2;

while (primeCount < 10001)
{
    if (IsPrime(currentNumber))
    {
        primeCount++;
        
        // Print progress for first few primes and milestones
        if (primeCount <= 10 || primeCount % 1000 == 0 || primeCount == 10001)
            Console.WriteLine($"Prime #{primeCount}: {currentNumber}");        
    }
    
    currentNumber++;
}

Console.WriteLine($"\nThe 10,001st prime number is: {currentNumber - 1}");