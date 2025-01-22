/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: edelarbr <edelarbr@student.42mulhouse.fr>  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/01/22 13:26:40 by edelarbr          #+#    #+#             */
/*   Updated: 2025/01/22 13:26:40 by edelarbr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <string.h>

void	*ft_memmove(void *dest, const void *src, size_t len)
{
	size_t	i;
	char	*char_dest;
	char	*char_src;

	if (!dest && !src)
		return (NULL);
	char_dest = (char *)dest;
	char_src = (char *)src;
	if (char_dest < char_src)
	{
		i = -1;
		while (++i < len)
			char_dest[i] = char_src[i];
	}
	else
	{
		while (len--)
			char_dest[len] = char_src[len];
	}
	return (char_dest);
}
