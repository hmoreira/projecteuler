namespace P3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var number = 600851475143;
            //var number = int.Parse(Console.ReadLine());
            var divider = 2;

            while (number > 1)
            {
                if (number % divider == 0)
                {
                    //Console.WriteLine(divider);
                    number = number / divider;                    
                }                
                else
                    divider++;
            }
            Console.WriteLine(divider);
        }
    }
}
