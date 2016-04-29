#!/bin/sh
named-checkconf -z
named-checkzone worldCompany ~/../etc/bind/zones/db.worldcompany
named-checkzone worldCompany ~/../etc/bind/zones/db.10.4
named-checkzone worldCompany ~/../etc/bind/zones/db.10.2
named-checkzone worldCompany ~/../etc/bind/zones/db.10.1

