condicion=false
while [ $condicion != true ]; do
	read -p "Introduzca un valor > 0: " valor
	if [ $valor -gt 0 ]; then
		condicion=true
		for i in `seq 0 $valor`; do
			echo $i
		done
	else
		echo "Valor incorrecto"
	fi
done
	
