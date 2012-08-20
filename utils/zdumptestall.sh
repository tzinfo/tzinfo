#!/bin/bash

if [ $# -ne 3 ]
then
  echo "Usage: $0 <zoneinfoDir> <zdumpCommand> <dataSource>" >&2
  exit 1
fi

zoneinfo=$1
zdump=$2
dataSource=$3

if [ "${dataSource}" = ruby ]
then
  # Ruby modules cut off after 2050
  maxYear=2050
elif [ "${dataSource}" = zoneinfo ]
then
  # Zoneinfo files contain data up to 2037, but zdump will then use the 
  # POSIX rules in the file to go up to 2500. TZInfo doesn't read the POSIX
  # rules yet, so cut off at 2037.
  maxYear=2037
else
  echo "The dataSource must either be set to ruby or zoneinfo" >&2
  exit 2 
fi


pushd "${zoneinfo}" > /dev/null
find . ! -name localtime ! -name posixrules ! -name '*.tab' ! -name 'Factory' -type f -print | sed -e 's/^\.\///' | sort |
{
  popd > /dev/null

  while read zone
  do
    echo "Testing zone ${zone}"
    $zdump -c ${maxYear} -v "${zone}" | ruby ./zdumptest.rb "${dataSource}" "${zoneinfo}"
  done
}
