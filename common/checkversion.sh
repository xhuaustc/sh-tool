#!/bin/bash

check()
{
        version=$1
        tempVersion=$2
        version1=`echo $version | cut -d. -f1`
        version2=`echo $version | cut -d. -f2`
        version3=`echo $version | cut -d. -f3`
        version4=`echo $version | cut -d. -f4`


        tempVersion1=`echo $tempVersion | cut -d. -f1`
        tempVersion2=`echo $tempVersion | cut -d. -f2`
        tempVersion3=`echo $tempVersion | cut -d. -f3`
        tempVersion4=`echo $tempVersion | cut -d. -f4`
        if [ $version1 -gt $tempVersion1 ] 
        then
            echo 1
               return 
        fi
        if [ $version1 -eq $tempVersion1 ]
        then
            if [ $version2 -gt $tempVersion2 ]
            then
                echo 1
                return
            fi
            if [ $version2 -eq $tempVersion2 ]
            then
                if [ $version3 -gt $tempVersion3 ]
                then
                    echo 1
                    return
                fi
                if [ $version3 -eq $tempVersion3 ]
                then
                    if [ $version4 -ge $tempVersion4 ]
                    then
                        echo 1
                        return
                    fi
                fi
            fi
        fi
        echo 0
        return
}

