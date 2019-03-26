ficheroAbierto=false
grupos=0
usuarios=0
contador=1
while [ $ficheroAbierto = false ]; do
	read -p "Introduce el nombre del fichero: " fichero
	if [ -f $fichero ]; then
		ficheroAbierto=true
		for i in $(cat $fichero | head -${contador} | tail -1); do
			linea=`cat $fichero | head -${contador} | tail -1`
			grupo=`echo $linea | awk '{print $1}'`
			for var in $(echo $linea); do
				usuarios=$((usuarios+1))
			done
			echo "$grupo $((usuarios-1)) usuarios" >> ficheroRes
			grupos=$((grupos+1))
			contador=$((contador+1))
			usuarios=0
		done
		echo "En el fichero proporcionado tenemos $((grupos-1)) grupos:"
		> lineasImprimir
		cat ficheroRes | uniq >> lineasImprimir
		rm ficheroRes
		cat lineasImprimir
		contador=0
		usuariosMaximos=0
		for i in $(cat lineasImprimir); do
			linea=`cat lineasImprimir | head -${contador} | tail -1`
			grupo=`echo $linea | awk '{print $1}'`
			usuariosGrupo=`echo $linea | awk '{print $2}'`
			if [ $usuariosGrupo -eq $usuariosMaximos ]; then
				echo $grupo >> ficheroRes
			else 
				if [ $usuariosGrupo -gt $usuariosMaximos ]; then
					> ficheroRes
					usuariosMaximos=$usuariosGrupo
					echo $grupo >> ficheroRes
				fi
			fi
			contador=$((contador+1))
		done
		grupo=`cat ficheroRes`
		echo "El grupo que tiene más usuarios es: $grupo"
		rm lineasImprimir ficheroRes
	else
		echo "El fichero no existe."
	fi
	
done