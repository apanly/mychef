#!/bin/bash

#echo "default['anjukeinc']['subdomain'] = 'yyang'" >> ./cookbooks/anjukeinc/attributes/default.rb

get_help() {
    printf "usage: %s -d value -p value args\n" $0
    exit
}

update_domain() {
    echo "setting sub domain config: $1..."
    echo "default['anjukeinc']['subdomain'] = '$1'" >> ./cookbooks/anjukeinc/attributes/default.rb
    echo "done."
}

update_path() {
    echo "setting code path config: $1..."
    echo "default['anjukeinc']['codepath'] = '$1'" >> ./cookbooks/anjukeinc/attributes/default.rb
    echo "done."
}

if [ $# -eq 0 ]
then
    get_help
fi

while getopts d:p: val
do
    case $val in
        d)
	    domain=$OPTARG;;
	p)
	    path=$OPTARG;;
        ?)
	    get_help;;
    esac
done

if [ ! -z $domain ] && [ ! -z $path ]
then
    update_domain $domain
    update_path $path
else
    get_help
fi
