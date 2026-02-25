for filename in $1/*.psd; do
  ksh convert_one_file.sh $filename
done
