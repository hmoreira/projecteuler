/*
 * Project Euler - Problem 7
 * 
 * Problem Description:
 * By listing the first six prime numbers: 2, 3, 5, 7, 11, 13, we can see that the 6th prime is 13.
 * What is the 10,001st prime number?
 *
 * Solution approach:
 * Use a simple primality test with optimization for even numbers and square root limit
 */

using System;

class Program
{
    static long SolveProblem7()
    {
        int count = 0;
        long num = 1;

        while (count < 10001)
        {
            num++;
            if (IsPrime(num))
            {
                count++;
            }
        }

        return num;
    }

    private static bool IsPrime(long n)
    {
        if (n <= 1) return false;
        if (n == 2) return true;
        if (n % 2 == 0) return false;

        for (long i = 3; i * i <= n; i += 2)
        {
            if (n % i == 0) return false;
        }

        return true;
    }

    static void Main(string[] args)
    {
        var result = SolveProblem7();
        Console.WriteLine($"Problem 7 solution: {result}");
        Console.WriteLine("Press any key to exit...");
        Console.ReadKey();
    }
}
