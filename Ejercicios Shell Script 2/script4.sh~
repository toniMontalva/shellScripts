
precipitacion=0
for $i in(cat precipitaciones.txt); do
	precipitacion=`awk '{print $2'}`
	if [ precipitacion -eq 0]; then
		echo `awk '{print $1'}`
	fi
done

