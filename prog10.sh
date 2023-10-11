echo "program name: $0"

if [ $# -eq 0 ]
then exit 
fi
echo "no: of arguments: $#"

echo "the input arhuments are"
num=1
for i in "$@"
do
    echo "arg$num is $i"
    num=`expr $num + 1`
done 
echo "Arguments in reverse order"
num=$#
while [ $num -ne 0 ]
do 
    eval echo "arg$num is \$$num"
    num=`expr $num - 1`
done