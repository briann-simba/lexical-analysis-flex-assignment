%{
    /* Definitions*/
%}


/* Rules section */
%%

[a-z]* {
    int j = 0;
    char string[50];
    strcpy(string, yytext);

    while(string[j]){
        string[j] = toupper(string[j]);
        j++;
    }

    printf("%s\n",  string);
}

.+ {printf("requirements have not been met");}

\n {return 0;}

%%

yywrap() {}

int main(){
    printf("Enter string: ");
    yylex();

    return 0;
}