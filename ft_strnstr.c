/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: edelarbr <edelarbr@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/07/27 17:39:23 by edelarbr          #+#    #+#             */
/*   Updated: 2022/10/31 18:17:42 by edelarbr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <string.h>

char	*ft_strnstr(const char *str, const char *to_find, size_t n)
{
	size_t	i;
	size_t	ii;
	char	*str_not_const;

	str_not_const = (char *)str;
	i = 0;
	ii = 0;
	if (to_find[ii] == '\0')
		return (str_not_const);
	while (str_not_const[i])
	{
		while (str_not_const[i + ii] == to_find[ii] && str_not_const[i + ii]
			&& i < n)
			ii++;
		if (to_find[ii] == '\0')
			return (str_not_const + i);
		i++;
		ii = 0;
	}
	return (0);
}