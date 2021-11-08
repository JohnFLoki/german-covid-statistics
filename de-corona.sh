#!/bin/bash
# This script was created by JohnFCreep and was taken from GitHub
wget https://impfdashboard.de/static/data/germany_vaccinations_by_state.tsv -O /var/www/html/public/de-corona.txt
text=$(cat /var/www/html/public/de-corona.txt)

wget https://impfdashboard.de/static/data/germany_vaccinations_timeseries_v2.tsv -O /var/www/html/public/germany_vaccinations_timeseries_v2.tsv
mv /var/www/html/public/germany_vaccinations_timeseries_v2.tsv /var/www/html/public/de-corona2.txt
text2=$(cat /var/www/html/public/de-corona2.txt)

debw1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BW )[0-9]*")
deby1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BY )[0-9]*")
debe1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BE )[0-9]*")
debb1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BB )[0-9]*")
dehb1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-HB )[0-9]*")
dehh1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-HH )[0-9]*")
dehe1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-HE )[0-9]*")
demv1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-MV )[0-9]*")
deni1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-NI )[0-9]*")
denw1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-NW )[0-9]*")
derp1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-RP )[0-9]*")
desl1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-SL )[0-9]*")
desn1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-SN )[0-9]*")
dest1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-ST )[0-9]*")
desh1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-SH )[0-9]*")
deth1=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-TH )[0-9]*")
gesamt=$(($debw1 + $deby1 + $debe1 + $debb1 + $dehb1 + $dehh1 + $dehe1 + $demv1 + $deni1 + $denw1 + $derp1 + $desl1 + $desn1 + $dest1 + $desh1 + $deth1))
day=`date +%d`
day1=$(expr $day - 1)

if [ $day1 -lt 10 ]
then
day2=0$day1
else
day2=$day1
fi

now=`date +%Y-%m-$day2`

gesamt2=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now )[0-9]*")
gesamt3=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 )[0-9]*")
gesamt4=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 )[0-9]*")
gesamt5=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 )[0-9]*")
gesamt6=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 )[0-9]*")
gesamt7=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 )[0-9]*")
gesamt8=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 )[0-9]*")
gesamt9=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 )[0-9]*")
gesamt10=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 )[0-9]*")
gesamt11=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 )[0-9]*")
gesamt12=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 )[0-9]*")
gesamt13=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 )[0-9]*")
gesamt14=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 )[0-9]*")
gesamt15=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 )[0-9]*")
gesamt16=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 )[0-9]*")
gesamt17=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 )[0-9]*")
gesamt18=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 )[0-9]*")
neue=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 )[0-9]*")

#echo $day
#echo $now
#echo $gesamt2
#echo $neue

debw2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BW $debw1 )[0-9]*")
deby2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BY $deby1 )[0-9]*")
debe2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BE $debe1 )[0-9]*")
debb2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BB $debb1 )[0-9]*")
dehb2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-HB $dehb1 )[0-9]*")
dehh2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-HH $dehh1 )[0-9]*")
dehe2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-HE $dehe1 )[0-9]*")
demv2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-MV $demv1 )[0-9]*")
deni2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-NI $deni1 )[0-9]*")
denw2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-NW $denw1 )[0-9]*")
derp2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-RP $derp1 )[0-9]*")
desl2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-SL $desl1 )[0-9]*")
desn2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-SN $desn1 )[0-9]*")
dest2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-ST $dest1 )[0-9]*")
desh2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-SH $desh1 )[0-9]*")
deth2=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-TH $deth1 )[0-9]*")

erst=$(($debw2 + $deby2 + $debe2 + $debb2 + $dehb2 + $dehh2 + $dehe2 + $demv2 + $deni2 + $denw2 + $derp2 + $desl2 + $desn2 + $dest2 + $desh2 + $deth2))

debw3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BW $debw1 $debw2 )[0-9]*")
deby3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BY $deby1 $deby2 )[0-9]*")
debe3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BE $debe1 $debe2 )[0-9]*")
debb3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-BB $debb1 $debb2 )[0-9]*")
dehb3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-HB $dehb1 $dehb2 )[0-9]*")
dehh3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-HH $dehh1 $dehh2 )[0-9]*")
dehe3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-HE $dehe1 $dehe2 )[0-9]*")
demv3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-MV $demv1 $demv2 )[0-9]*")
deni3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-NI $deni1 $deni2 )[0-9]*")
denw3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-NW $denw1 $denw2 )[0-9]*")
derp3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-RP $derp1 $derp2 )[0-9]*")
desl3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-SL $desl1 $desl2 )[0-9]*")
desn3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-SN $desn1 $desn2 )[0-9]*")
dest3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-ST $dest1 $dest2 )[0-9]*")
desh3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-SH $desh1 $desh2 )[0-9]*")
deth3=$(echo $text | grep --only-matching --perl-regexp "(?<=DE-TH $deth1 $deth2 )[0-9]*")

voll=$(($debw3 + $deby3 + $debe3 + $debb3 + $dehb3 + $dehh3 + $dehe3 + $demv3 + $deni3 + $denw3 + $derp3 + $desl3 + $desn3 + $dest3 + $desh3 + $deth3))

einw=83729336
percvoll=$(echo "scale=1 ; (100*$voll/$einw)" | bc)
percerst=$(echo "scale=1 ; (100*$erst/$einw)" | bc)

echo Gesamte Dosen\:\<br\>$gesamt2\<br\>\<br\>mindestens eine Impfung\:\<br\>$erst \($percerst%\)\<br\>\<br\>Vollst\&auml\;ndig geimpft\:\<br\>$voll  \($percvoll%\)\<br\>\<br\>T\&auml\;glich verabreichte Impfdosen\:\<br\>$neue > /var/www/html/public/apide-corona.txt
