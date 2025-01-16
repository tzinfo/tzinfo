#!/bin/bash

MAXYEAR=2075

if [ $# -ne 2 ]
then
  echo "Usage: $0 <zoneinfoDir> <zdumpCommand>"
  exit 1
fi

zoneinfo=`realpath "$1"`
zdump="$2"

cut_start=$((${#zoneinfo} + 2))

find "$zoneinfo" ! -name leapseconds ! -name localtime ! -name posixrules ! -name tzdata.zi ! -name '*.tab' -type f -printf '%P\n' | sort |
{
  while read zone
  do
    echo "Testing zone $zone"
    path="$zoneinfo/$zone"
    "$zdump" -c $MAXYEAR -v "$path" | cut -c $cut_start- | ./zdumptest.rb
  done
}
