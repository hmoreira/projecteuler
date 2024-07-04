int ret = 0;

for (int i = 0;i<1000;i++)
{
    if (i % 3 == 0 || i % 5 == 0)
      ret += i;
}

Console.WriteLine(ret);





