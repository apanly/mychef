#!/bin/bash

#echo "default['anjukeinc']['subdomain'] = 'yyang'" >> ./cookbooks/anjukeinc/attributes/default.rb

get_help() {
    printf "usage: %s -d value -p value args\n" $0
    exit
}

update_domain() {
    echo "setting sub domain config: $1..."
    echo "default['anjukeinc']['subdomain'] = '$1'" >> ./cookbooks/anjukeinc/attributes/default.rb
    echo "default['anjuke']['subdomain'] = '$1'" >> ./cookbooks/anjuke/attributes/default.rb
    echo "done."
}

update_path(){

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
        path = $OPTARG;;
        ?)
	    get_help;;
    esac
done

if [ ! -z $domain ]
then
    update_domain $domain
    #update_path $path
    vagrant up
else
    get_help
fi