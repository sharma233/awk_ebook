#!/usr/bin/awk -f
#
# Print each record EXCEPT
# IF the first record contains "raspberry",
# THEN replace "red" with "pi"
#
BEGIN {
	FS=",";
}

$1 == "raspberry" {
	gsub(/red/,"pi")
}
