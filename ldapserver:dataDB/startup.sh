#! /bin/bash
echo "slapd ok"
/usr/sbin/slapd -d1 -u ldap -h "ldap:/// ldaps:/// ldapi:///"

