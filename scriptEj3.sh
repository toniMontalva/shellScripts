condicion=false
while [ $condicion != true ]; do
	read -p "Introduzca la nota: " nota
	if [ $nota -ge 0 -a $nota -le 10]; then
		condicion=true
		if [$nota -lt 5]; then
			echo "Suspendido"
		else if [$nota -ge 5 -a $nota -lt 6]; then
			echo "Aprobado"
		else if [$nota -ge 6 -a $nota -lt 7]; then
			echo "Bien"
		else if [$nota -ge 7 -a $nota -lt 9]; then
			echo "Notable"
		else
			echo "Sobresaliente"
		fi
	else
		echo "Valor incorrecto"
	fi
done
