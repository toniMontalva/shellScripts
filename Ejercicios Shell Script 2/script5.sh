linux=0
windows=0
procesosLinux=0
procesosWindows=0

for $i in(cat listado.txt); do
	sistema=`awk '{print $2'}`
	if [sistema="Linux"]; then
		linux=`expr $linux + 1`
		procesosLinux=awk '{print $1'}`
	else
		windows=`expr $linux + 1`
		procesosWindows=awk '{print $1'}`
	fi
done

echo "Linux-> " $linux " " $procesosLinux
echo "Windows-> " $windows " " $procesosWindows

