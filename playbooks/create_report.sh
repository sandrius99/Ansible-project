#!/bin/bash
day=$(date | cut -d ' ' -f 1,2,3)
grep -e "$day" /var/log/apache2/error.log > /tmp/apache_report.txt
grep -e "$day" /var/log/mysql/error.log > /tmp/mysql_report.txt
sudo awk "/ModSecurity/ && /unique_id/{print}" /tmp/apache_report.txt > /home/admin/apache_daily_report.txt
sudo awk "/ModSecurity/ && /unique_id/{print}" /tmp/mysql_report.txt > /home/admin/mysql_daily_report.txt
rm /tmp/apache_report.txt
rm /tmp/mysql_report.txt
