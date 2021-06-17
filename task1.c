/*Задача1. Да се направи програма , която заделя динамичен масив с брой елементи
зададени от потребителя . За всеки елемент от масива се очаква потребителят да въведе
цяло и число и след това се изчислява сумата на всички елементи от масива */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void validateNumber(char *inString)
{
    for (int i = 0; i < strlen(inString); i++)
    {
        if (!(
              (inString[i] >= '0') && (inString[i] <= '9')
             )
           )
        {
    	    exit(3); /* This input is a character,float or special symbol */
        }
    }
}

int main(int argc, char* argv[])
{
    unsigned uNumOfElem = argc - 1;
    if (uNumOfElem <=0){
	exit(2); /* At least two arguments are needed*/
    }	
    int *p = NULL;
    int *pp = NULL;
    int sum = 0;

    printf("%d is the  size of the Array: ", uNumOfElem);
    
    pp = p = (int *)malloc(uNumOfElem * sizeof(int));
    for (int i = 1; i <= uNumOfElem; i++)
    {
        validateNumber(argv[i]);
	*pp++ = atoi(argv[i]) ;
    }
    for (int i = 0; i < uNumOfElem; i++)
    {
        sum += *(p + i);
    }
    printf("The sum is : %d\n", sum);
    if (sum <=0){
	exit(1); /*Sum is not correct !Please check again!*/
    }

    free(p);
    return 0;
}
