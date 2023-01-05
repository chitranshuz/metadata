#!/bin/bash

echo -e "Type what meta-data you are looking for from the list....\n"
curl http://169.254.169.254/latest/meta-data/
echo -e "\n"

condition=false
until $condition
do
        echo -e "Type Here"

        read metaData
        curl http://169.254.169.254/latest/meta-data/$metaData

        echo -e "\n"
        echo -e "Give the complete path using argument1/argument2 or press ctrl + c to exit"
done
