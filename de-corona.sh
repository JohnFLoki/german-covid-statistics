#!/bin/bash
# This script was created by JohnFCreep and was taken from GitHub

wget https://impfdashboard.de/static/data/germany_vaccinations_timeseries_v3.tsv -O /var/www/html/public/de-corona2.txt

names=$(cat /var/www/html/public/de-corona2.txt | head -1)
values=$(cat /var/www/html/public/de-corona2.txt | tail -1)
echo $names | jq --raw-input --slurp 'split(" ") | map(split("\n")) | map( { "name": .[0] } )'> merge1.json
echo $values | jq --raw-input --slurp 'split(" ") | map(split("\n")) | map( { "value": .[0] } )' > merge2.json

json=$(jq -s '(.[0] | keys[]) as $k | reduce .[] as $item (null; .[$k] += $item[$k])' merge*.json | grep -vwE "(null)")

neue=$(echo $json | grep --only-matching --perl-regexp "(?<=\"name\": \"impfungen\", \"value\": \")[0-9]+")
gesamt=$(echo $json | grep --only-matching --perl-regexp "(?<=\"name\": \"impfungen_kumulativ\", \"value\": \")[0-9]+")
erst=$(echo $json | grep --only-matching --perl-regexp "(?<=\"name\": \"personen_min1_kumulativ\", \"value\": \")[0-9]+")
voll=$(echo $json | grep --only-matching --perl-regexp "(?<=\"name\": \"personen_gi_kumulativ\", \"value\": \")[0-9]+")
drei=$(echo $json | grep --only-matching --perl-regexp "(?<=\"name\": \"personen_boost1_kumulativ\", \"value\": \")[0-9]+")
vier=$(echo $json | grep --only-matching --perl-regexp "(?<=\"name\": \"personen_boost2_kumulativ\", \"value\": \")[0-9]+")

einw=83729336
percerst=$(echo "scale=1 ; (100*$erst/$einw)" | bc)
percvoll=$(echo "scale=1 ; (100*$voll/$einw)" | bc)
percdrei=$(echo "scale=1 ; (100*$drei/$einw)" | bc)
percvier=$(echo "scale=1 ; (100*$vier/$einw)" | bc)

echo Gesamte Dosen\:\<br\>$gesamt\<br\>\<br\>mindestens eine Impfung\:\<br\>$erst \($percerst%\)\<br\>\<br\>Vollst\&auml\;ndig geimpft\:\<br\>$voll  \($percvoll%\)\<br\>\<br\>Geboostert\:\<br\>$drei  \($percdrei%\)\<br\>\<br\>2 x Geboostert\:\<br\>$vier  \($percvier%\)\<br\>\<br\>T\&auml\;glich verabreichte Impfdosen\:\<br\>$neue > /var/www/html/public/apide-corona.txt
rm merge1.json merge2.json
