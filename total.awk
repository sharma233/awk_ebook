$1 != "tempfs" {
	used += $3;
	available += $4;
}
END {
	printf "%d GiB used\n%d GiB available\n",
	used/2^20, available/2^20;
}
