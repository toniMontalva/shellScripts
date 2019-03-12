
pares=0
impares=0
for $i in(cat numeros.txt); do
	res=`expr $i % 2`
	if [res -eq 0]; then
		pares=`expr $pares + 1`
		echo "numero par: " $i
	else
		impares=`expr $impares + 1`
		echo "numero impar: " $i
	fi
done

