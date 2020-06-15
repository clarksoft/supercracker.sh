for i in $(seq 2000 -1 0);do
  pass=$(fcrackzip -v -D -u -p xato.txt files/$i.zip | tail -1 | awk 'NF{print $NF}');
  unzip -P $pass files/$i.zip
done
