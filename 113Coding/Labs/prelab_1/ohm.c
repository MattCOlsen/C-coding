#include <stdio.h>

double volts(double i, double r);
double amps(double v, double r);
double ohms(double v, double i);

int main(void)
{
        int cont = 1;
        double v;
        double i;
        double r;

        printf("This program finds the missing value in Ohm's Law (V = I x R ).\n");
        
        while(cont == 1) {
                printf("Input the value of each known variable when prompted.  If unknown, input -1.\n");
                printf("Input V: ");
                scanf("%lf", &v);
                printf("Input I: ");
                scanf("%lf", &i);
                printf("Input R: ");
                scanf("%lf", &r);   

                if(v < 0) {   
                        v = volts(i, r);
                        printf("The answer is %lf volts.\n", v);
                } else if (i < 0) {
                        i = amps(v, r);
                        printf("The answer is %lf amps.\n", i);
                } else {
                        r = ohms(v, i);
                        printf("The answer is %lf ohms.\n", r);
                }

                printf("Would you like to continue?\n1 for yes, 0 for no: ");
                scanf("%d", &cont);
        } 

        return 0;
}

double volts(double i, double r)
{
        return i * r;
}

double amps(double v, double r)
{
        return v / r;
}

double ohms(double v, double i)
{
        return v / i;
}
