BEGIN {
	i=2;
	do {
		print i, " to the second power is ", i*i;
		i = i + 1
	}
	while (i < 10)
exit;
}
