#!/bin/awk -f
BEGIN {
	for (i=1; i <= 10; i++) {
		print i, " to the second power is ", i*i;
	}
exit;
}
