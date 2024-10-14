BEGIN {
	FS=",";
	template="email_template.txt";
	output="acceptance";
	getline;
	NR=0;
}

{
	firstname=$1;
	lastname=$2;
	email=$3;
	title=$4;

	outfile=(output NR ".txt");

	while((getline ln < template) > 0)
	{
		sub(/{firstname}/, firstname, ln);
		sub(/{lastname}/, lastname, ln);
		sub(/{email}/, email, ln);
		sub(/{title}/, title, ln);
		print(ln) > outfile;
	}
	close(outfile);
	close(template);
}
