#!/bin/awk -f
BEGIN {
# Loop through 1 to 10
	i=1;
	while (i <= 10) {
	print i, " to the second power is ", i*i;
	i = i+1;
}
exit;
}
