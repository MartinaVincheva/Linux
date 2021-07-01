/*Задача 7. Напишете масив от структури наречен kaytab[ ], като
използвате тази, дефинирана в горното упражнение потребителски тип
key_t, която съдържа символен низ и число. Инициализирайте масива с
всички ключови думи на С.*/
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct names
{
    char s[10];
    int a;
} key_t;

typedef key_t WORDS[32];

WORDS keywords = {
    {"auto", 0},
    {"break", 1},
    {"case", 2},
    {"char", 3},
    {"const", 4},
    {"continue", 5},
    {"default", 6},
    {"do", 7},
    {"double", 8},
    {"else", 9},
    {"enum", 10},
    {"extern", 11},
    {"float", 12},
    {"for", 13},
    {"goto", 14},
    {"if", 15},
    {"int", 16},
    {"long", 17},
    {"register", 18},
    {"return", 19},
    {"short", 20},
    {"signed", 21},
    {"sizeof", 22},
    {"static", 23},
    {"struct", 24},
    {"switch", 25},
    {"typedef", 26},
    {"union", 27},
    {"unsigned", 28},
    {"void", 29},
    {"volatile", 30},
    {"while", 31},
};
void validateNumber(char *inString)
{
    for (int i = 0; i < strlen(inString); i++)
    {
        if ((inString[i] >= '0') && (inString[i] <= '9'))
        {
            exit(3); /* This input is  a number */
        }
    }
}

int main(int argc, char *argv[])
{
    if (argc != 2)
        exit(1);
    validateNumber(argv[1]);

    for (int j = 0; j < sizeof(WORDS) / sizeof(key_t); j++)
    {
        int result = strcmp(argv[1], keywords[j].s);
        if (result != 0)
        {
            printf("%d", result);
            exit(2); /* This string is valid C keyword */
        }
        else
        {
            return 0;
            exit(4);
        }
    }

    /* for (int i = 0; i < sizeof(WORDS) / sizeof(key_t); i++)
    {
        printf("[%2d] = \"%s\"\n", keywords[i].a, keywords[i].s);
    }*/

    return 0;
}