/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: edelarbr <edelarbr@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/31 18:16:32 by edelarbr          #+#    #+#             */
/*   Updated: 2022/10/31 18:16:32 by edelarbr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <string.h>

int	ft_memcmp(const void *s1, const void *s2, size_t n)
{
	return (ft_strncmp((char *)s1, (char *)s2, n));
}

/* 
#include <stdio.h>
#include <string.h>
int	main(void)
{
	char s1[] = "string1";
	char s2[] = "string2";
	int n = 7;
	printf("%d\n", memcmp(s1, s2, n));
	printf("%d\n", ft_memcmp(s1, s2, n));
	return (0);
} 
*/