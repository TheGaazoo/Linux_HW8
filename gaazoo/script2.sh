#!/bin/bash
 
 
dir="$1"
 
script=`echo $0 | xargs basename`
 
        for name_file in $dir/* ;
 
        do
 
        if [[ `basename $name_file` != 'ownersort.sh' ]] ; then
 
                user_name=`ls -la $name_file | awk {'print $3; '} | sort | uniq | xargs echo`
 
                mkdir -p $dir/$user_name && chown -vR $user_name $dir
 
                dirname=($dir/$user_name)
 
                cp -pv $name_file $dirname
 
                rm -v $name_file
 
                echo
                echo "Copy done"
         else
 
         echo
         echo "This is a script file. Skip file"
 
 
        fi
 
done    