
for $i in(cat nombres.txt); do
	mkdir $i
	for(`seq 0 $1`); do
		mkdir personal$1
	done
done
