#!/bin/bash
# This script was created by JohnFCreep and was taken from GitHub 
wget https://raw.githubusercontent.com/owid/covid-19-data/master/public/data/latest/owid-covid-latest.json -O /var/www/html/public/corona-data.txt
text=$(cat /var/www/html/public/corona-data.txt)

echo $text | grep -oP '(?<=DEU).*(?=GHA)' > /var/www/html/public/de-data.txt
de=$(cat /var/www/html/public/de-data.txt)
detotalc=$(echo $de | grep --only-matching --perl-regexp "(?<=total_cases\":)[0-9]+")
denewc=$(echo $de | grep --only-matching --perl-regexp "(?<=new_cases\":)[0-9]+")
detotald=$(echo $de | grep --only-matching --perl-regexp "(?<=total_deaths\":)[0-9]+")
denewd=$(echo $de | grep --only-matching --perl-regexp "(?<=new_deaths\":)[0-9]+")
deiwert=$(echo $de | grep --only-matching --perl-regexp "(?<=new_cases_smoothed_per_million\":)[0-9]*\.[0-9]")
detotalt=$(echo $de | grep --only-matching --perl-regexp "(?<=total_tests\":)[0-9]+")
detpc=$(echo $de | grep --only-matching --perl-regexp "(?<=tests_per_case\":)[0-9]*\.[0-9]")

if [ -z "$denewd" ]
then
denewd=0
fi

echo Gesamt Infektionen:\<br\>$detotalc\<br\>\<br\>Neue Infektionen:\<br\>$denewc\<br\>\<br\>Gesamte Todesfälle:\<br\>$detotald\<br\>\<br\>Neue Todesfälle:\<br\>$denewd\<br\>\<br\>Inzidenzwert:\<br\>$deiwert\<br\>\<br\>Gesamt Tests:\<br\>$detotalt\<br\>\<br\>Tests pro Fall:\<br\>$detpc > /var/www/html/public/apicorona-data.txt
