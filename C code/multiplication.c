#include <stdio.h>

int multiplication(int x, int y)
{
    int z = 0;
    for (int i = 0; i < x; i++)
    {
        z += y;
    }

    return z;
}

int main(void)
{
    int a, b, c;

    printf("enter 2 numbers: ");
    scanf("%d %d", &b, &c);

    a = multiplication(b, c);
    printf("%d\n", a);
}