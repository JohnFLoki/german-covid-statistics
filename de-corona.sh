#!/bin/bash
# This script was created by JohnFCreep and was taken from GitHub

wget https://impfdashboard.de/static/data/germany_vaccinations_timeseries_v2.tsv -O /var/www/html/public/de-corona2.txt

text2=$(cat /var/www/html/public/de-corona2.txt | tail -1)
now=$(echo $text2 | grep -oP '[0-9]*\-[0-9]*\-[0-9]*')
echo $now > /var/www/html/public/apide-corona-date.txt
#day=`date +%d`
#day1=$(expr $day - 1)

#if [ $day1 -lt 10 ]
#then
#day2=0$day1
#else
#day2=$day1
#fi

#now=`date +%Y-%m-$day2`

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
erst=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 )[0-9]*")
voll=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 $erst )[0-9]*")
drei=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 $erst $voll )[0-9]*")
neue=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 $erst $voll $drei )[0-9]*")
gesamt23=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 $erst $voll $drei $neue )[0-9]*")
gesamt24=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 $erst $voll $drei $neue $gesamt23 )[0-9]*")
gesamt25=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 $erst $voll $drei $neue $gesamt23 $gesamt24 )[0-9]*")
gesamt26=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 $erst $voll $drei $neue $gesamt23 $gesamt24 $gesamt25 )[0-9]*")
gesamt27=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 $erst $voll $drei $neue $gesamt23 $gesamt24 $gesamt25 $gesamt26 )[0-9]*")
personenerst=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 $erst $voll $drei $neue $gesamt23 $gesamt24 $gesamt25 $gesamt26 $gesamt27 )[0-9]*") #same as erst
personenvoll=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 $erst $voll $drei $neue $gesamt23 $gesamt24 $gesamt25 $gesamt26 $gesamt27 $personenerst )[0-9]*") #not same as voll
personendrei=$(echo $text2 | grep --only-matching --perl-regexp "(?<=$now $gesamt2 $gesamt3 $gesamt4 $gesamt5 $gesamt6 $gesamt7 $gesamt8 $gesamt9 $gesamt10 $gesamt11 $gesamt12 $gesamt13 $gesamt14 $gesamt15 $gesamt16 $gesamt17 $gesamt18 $erst $voll $drei $neue $gesamt23 $gesamt24 $gesamt25 $gesamt26 $gesamt27 $personenerst $personenvoll )[0-9]*") #same as drei

einw=83729336
percerst=$(echo "scale=1 ; (100*$erst/$einw)" | bc)
percvoll=$(echo "scale=1 ; (100*$personenvoll/$einw)" | bc)
percdrei=$(echo "scale=1 ; (100*$drei/$einw)" | bc)

echo Gesamte Dosen\:\<br\>$gesamt2\<br\>\<br\>mindestens eine Impfung\:\<br\>$erst \($percerst%\)\<br\>\<br\>Vollst\&auml\;ndig geimpft\:\<br\>$voll  \($percvoll%\)\<br\>\<br\>Geboostert\:\<br\>$drei  \($percdrei%\)\<br\>\<br\>T\&auml\;glich verabreichte Impfdosen\:\<br\>$neue > /var/www/html/public/apide-corona.txt
