for file in "$@" ; do 
if [ -f $file ] ; then
ufile=`echo $file | tr '[a-z]' '[A-Z]'`
if [ -f $ufile ]; then
    echo "$ufile also exists"
else 
    mv $file $ufile
fi
else 
    echo "$file doesnt exist "
fi
done