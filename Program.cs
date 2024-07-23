using System;

namespace P4
{
    internal class Program
    {
        static void Main(string[] args)
        {            
            var ret = 0;

            for (int i = 100; i <= 999; i++)
                for (int j = 100; j <= 999; j++)
                {
                    int result = i * j;
                    if (CheckPalindrome(result.ToString()))
                        if (result > ret)
                            ret = result;
                }

            Console.WriteLine(ret);
        }

        static bool CheckPalindrome(string num)
        {
            for (int i = 0; i < num.Length; i++)
            {
                if (num[i] != num[num.Length - i - 1])
                    return false;
            }
            return true;
        }
    }
}
