#include<stdio.h>

// Importing the POSIX regex library
#include <regex.h> 
int main() {
    regex_t regex;
    int return_value;

    return_value = regcomp(&regex,"[:lower:]",0);
    if (!return_value){
        printf("Regex termino de compilarse correctamente.\n");
    }
    else{
        printf("Fallo la compilacion de la Regex.\n");
    }
    return 0;
}