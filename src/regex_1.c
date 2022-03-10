#include<stdio.h>
// Importing the POSIX regex library
#include <regex.h> 
void print_result(int return_value){
  if (!return_value){
    printf("Patron encontrado.\n");
  }
  else if (return_value == REG_NOMATCH){
    printf("No se encontro el patron.\n");
  }
  else{
    printf("Ocurrio un error.\n");
  }
}
int main() {
  regex_t regex;
  int return_value;
  int return_value2;
  int return_value3;

  return_value = regcomp(&regex,"dulce",0);
  return_value = regexec(&regex, "helado", 0, NULL, 0);

  return_value2 = regcomp(&regex,"helado",0);
  return_value2 = regexec(&regex, "helado de dulce de vainilla", 0, NULL, 0);

  return_value3 = regcomp(&regex,"hjih[",0); //Regex invalida


  print_result(return_value);
  print_result(return_value2);
  print_result(return_value3);
  return 0;
}