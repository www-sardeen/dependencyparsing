s=$1
s=${s##*/}
s=${s%.psd}

echo "Converting $s..."

sed -f reps_ME.txt $1 | sed -r -f reps_polylets.txt > ../tmp/tmp.txt

python3 convert.py -N -i ../tmp/tmp.txt > ../output/PPCME2/$s.conllu
