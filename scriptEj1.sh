read -p "Introduce el valor 1: " valor1
read -p "Introduce el valor 2: " valor2
if [ $valor1 -eq $valor2 ]; then 
	echo "Son iguales"
else if [ $valor1 -gt $valor2 ]; then
	echo "Valor 1 mayor que el valor 2"
else 
	echo "Valor 2 mayor que el valor 1"
fi


