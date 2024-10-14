#! /usr/bin/awk -f
# Print all but line 1 with the line number on the front

NR > 1 {
	printf "%d: %s\n", NR, $0
}
