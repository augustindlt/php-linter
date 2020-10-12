#! /bin/sh

YELLOW='\033[0;33m'
RED='\033[0;31m'
NO_COLOR='\033[0m'

php_files=($(find . -type f -name \*.php))
warning_count=0

for php_file in "${php_files[@]}"
do
    warning_count=$((warning_count + 1))
	echo $php_file : ${YELLOW}Use of php${NO_COLOR}
done

echo ""

echo ${RED}$warning_count errors found, main problem : Use of php${NO_COLOR}