#!/bin/bash
input=$1
output1=$(echo -n ${input//\"/\\\"}) 
output2=$(echo -n ${output1//\//\\\/}) 
echo $output2
