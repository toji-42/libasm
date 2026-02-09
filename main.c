#include <stdio.h>

extern int ft_strcmp(const char *s1, const char *s2);//
extern int ft_strcpy(const char *s1, const char *s2);//
extern size_t ft_read(int fd, void *buf,  size_t count);
extern int ft_strlen(char *s1);
extern size_t ft_read(int fd, void *buf,  size_t count);

int main(int ac, char **av) {
    printf("Resultat : %d\n", ft_strcmp("abc", "abc"));
    printf("Resultat : %d\n", ft_strcmp("abc", "abd"));

    printf("Resultat : %d\n", ft_strlen("abc"));
    printf("Resultat : %d\n", ft_strlen("abc"));

    char first_string[] = "Hi my name is Alien\n";
    char second_string[] = "Hi my name is Denis\n";

    ft_strcpy(first_string, second_string);
    printf("first_string: %s, \t\t second_string: %s\n", first_string, second_string);  
}
