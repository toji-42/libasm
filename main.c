#include <stdio.h>

extern int ft_strcmp(const char *s1, const char *s2);
extern int ft_strlen(char *s1);

int main() {
    printf("Resultat : %d\n", ft_strcmp("abc", "abc"));
    printf("Resultat : %d\n", ft_strcmp("abc", "abd"));

    printf("Resultat : %d\n", ft_strlen("abc"));
    printf("Resultat : %d\n", ft_strlen("abc"));
    return 0;
}
