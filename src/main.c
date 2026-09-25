#include <stdio.h>
#include <stdlib.h>
#include "../include/mystrfunctions.h"
#include "../include/myfilefunctions.h"

int main() {
    printf("--- Testing String Functions ---\n");
    char str1[50] = "Hello ";
    char str2[] = "Operating Systems";
    printf("Length of str2: %d\n", mystrlen(str2));
    mystrcat(str1, str2);
    printf("Concatenated string: %s\n", str1);

    printf("\n--- Testing File Functions ---\n");
    FILE* fp = fopen("REPORT.md", "r");
    if (!fp) {
        printf("Failed to open REPORT.md for testing.\n");
        return 1;
    }
    int lines, words, chars;
    if (wordCount(fp, &lines, &words, &chars) == 0) {
        printf("REPORT.md stats -> Lines: %d, Words: %d, Chars: %d\n", lines, words, chars);
    }
    fclose(fp);
    return 0;
}
