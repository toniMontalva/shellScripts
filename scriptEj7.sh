condicion=false
while [ $condicion != true ]; do
	read -p "Introduzca un número del 1 al 30: " dia
	if [ $dia -ge 1 -a $dia -le 30 ]; then
		condicion=true
		if [$dia -eq 1 -o $dia -eq 8 -o $dia -eq 15 -o $dia -eq 22 -o $dia -eq 29]; then
			echo "Es lunes"
		else if [$dia -eq 2 -o $dia -eq 9 -o $dia -eq 16 -o $dia -eq 23 -o $dia -eq 30]; then
			echo "Es martes"
		else if [$dia -eq 3 -o $dia -eq 10 -o $dia -eq 17 -o $dia -eq 24]; then
			echo "Es miércoles"
		else if [$dia -eq 4 -o $dia -eq 11 -o $dia -eq 18 -o $dia -eq 25]; then
			echo "Es jueves"
		else if [$dia -eq 5 -o $dia -eq 12 -o $dia -eq 19 -o $dia -eq 26]; then
			echo "Es viernes"
		else if [$dia -eq 6 -o $dia -eq 13 -o $dia -eq 20 -o $dia -eq 27]; then
			echo "Es sábado"
		else
			echo "Es domingo"
		fi
	else
		echo "Valor incorrecto"
	fi
done
