int ret = 2;
int value1 = 1;
int value2 = 2;
int value = 3;

while (value<4000000)
{
    value1 = value2;
    value2 = value;
    value = value1 + value2;
    if (value % 2 == 0)
        ret += value;
}

Console.WriteLine(ret);





