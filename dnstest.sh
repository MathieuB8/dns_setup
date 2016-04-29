#!/bin/sh
test=`nslookup srv-web-s4-1.worldcompany | grep Address | tail -n 1 | cut -c 10-`
if [ "$test" != "10.4.4.60" ]
then
	echo "dns : web erreur"
fi


test=`nslookup srv-snmp-s4-1.worldcompany | grep Address | tail -n 1 | cut -c 10-`
if [ "$test" != "10.4.4.50" ]
then
	echo "dns : snmp erreur"
fi

test=`nslookup srv-mail-s4-1.worldcompany | grep Address | tail -n 1 | cut -c 10-`
if [ "$test" != "10.4.4.40" ]
then
	echo "dns : mail erreur"
fi

test=`nslookup srv-proxy-s4-1.worldcompany | grep Address | tail -n 1 | cut -c 10-`
if [ "$test" != "10.4.4.30" ]
then
	echo "dns : proxy erreur"
fi

test=`nslookup srv-dns-s3-1.worldcompany | grep Address | tail -n 1 | cut -c 10-`
if [ "$test" != "10.4.3.20" ]
then
	echo "dns : dns 2 erreur"
fi

test=`nslookup srv-dns-s2-1.worldcompany | grep Address | tail -n 1 | cut -c 10-`
if [ "$test" != "10.4.2.20" ]
then
	echo "dns : dns 1 erreur"
fi

test=`nslookup srv-dhcp-1.worldcompany | grep Address | tail -n 1 | cut -c 10-`
if [ "$test" != "10.4.1.10" ]
then
	echo "dns : dhcp erreur"
fi


test=`nslookup srv-compta-s1-1.worldcompany | grep Address | tail -n 1 | cut -c 10-`
if [ "$test" != "10.1.1.1" ]
then
	echo "dns : compta1 erreur"
fi

test=`nslookup srv-stock-s1-1.worldcompany | grep Address | tail -n 1 | cut -c 10-`
if [ "$test" != "10.2.1.1" ]
then
	echo "dns : stock1 erreur"
fi

test=`nslookup "10.4.1.10" | grep name | tail -n 1 | cut -d" " -f3`
if [ "$test" != "srv-dhcp-1." ]
then
    echo $test
    echo erreur dhcp  
fi

test=`nslookup "10.4.2.20" | grep name | tail -n 1 | cut -d" " -f3`
if [ "$test" != "srv-dns-s2-1." ]
then
    echo erreur dns1
fi

test=`nslookup "10.4.3.20" | grep name | tail -n 1 | cut -d" " -f3`
if [ "$test" != "srv-dns-s3-1." ]
then
    echo erreur dns2
fi

test=`nslookup "10.4.4.40" | grep name | tail -n 1 | cut -d" " -f3`
if [ "$test" != "srv-mail-s4-1." ]
then
    echo erreur mail
fi

test=`nslookup "10.4.4.30" | grep name | tail -n 1 | cut -d" " -f3`
if [ "$test" != "srv-proxy-s4-1." ]
then
    echo erreur proxy
fi

test=`nslookup "10.4.4.50" | grep name | tail -n 1 | cut -d" " -f3`
if [ "$test" != "srv-snmp-s4-1." ]
then
    echo erreur snmp
fi

test=`nslookup "10.4.4.60" | grep name | tail -n 1 | cut -d" " -f3`
if [ "$test" != "srv-web-s4-1." ]
then
    echo erreur web
fi

test=`nslookup "10.4.4.253" | grep name | tail -n 1 | cut -d" " -f3`
if [ "$test" != "fw-s4-1." ]
then
    echo erreur firewall
fi

test=`nslookup "10.2.1.1" | grep name | tail -n 1 | cut -d" " -f3`
if [ "$test" != "srv-stock-s1-1." ]
then
    echo erreur stock1
fi

test=`nslookup "10.1.1.1" | grep name | tail -n 1 | cut -d" " -f3`
if [ "$test" != "srv-compta-s1-1." ]
then
    echo erreur compta1
fi
