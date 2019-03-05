pago=20
litrosPagoAdicional20=0
litrosPagoAdicional10=0
read -p "Introduzca cantidad de litros: " litros
if [$litros -le 50]; then
	echo 20
else
	for i in `seq 50 $litros`]; do
		if [$i -le 200]; then
			litrosPagoAdicional20=`expr $litrosPagoAdicional20+1`
		else
			litrosPagoAdicional10=`expr $litrosPagoAdicional10+1`
		fi
	done
	pago=$(echo "scale=2;$pago+$litrosPagoAdicional10*10/100+$litrosPagoAdicional20*20/100" | bc -l)
	echo $pago
fi
