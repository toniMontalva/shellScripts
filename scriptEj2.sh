condicion=false
while [ $condicion != true ]; do
	read -p "Introduzca un valor > 0: " valor
	if [ $valor -gt 0 ]; then
		condicion=true
		resultado=`expr $valor % 2`
		if [ $resultado -eq 0 ]; then
			echo "El valor es par"
		else
			echo "El valor es impar"
		fi
	else
		echo "Valor incorrecto"
	fi
done
	
