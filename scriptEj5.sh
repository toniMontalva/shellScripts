condicion=false
valorTotal=0
valores=0
while [ $condicion != true ]; do
	read -p "Introduzca un valor > 0: " valor
	if [ $valor -ne 0 ]; then
		valorTotal=`expr $valorTotal + $valor`
		valores=`expr $valores + 1`
	else
		condicion=true
		echo "El total de los valores es: $valorTotal"
		media=`expr $valorTotal / $valores`
		echo "La media es: $media.$mediaDecimal"
	fi
done
