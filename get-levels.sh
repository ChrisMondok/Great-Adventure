sox "$1" -r 1000 -c 1 out.dat
OUT=$(grep -v ';' out.dat | sed -r 's/ +/ /g' | sed -r 's/^ //g' | cut -d ' ' -f 2 | sed 's/$/,/g')
echo [$OUT 0] > out.js;
