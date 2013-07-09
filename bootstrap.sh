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

if [ $# -eq 0 ]
then
    get_help
fi

while getopts d: val
do
    case $val in
        d)
	    domain=$OPTARG;;
        ?)
	    get_help;;
    esac
done

if [ ! -z $domain ]
then
    update_domain $domain
    vagrant up
else
    get_help
fi
