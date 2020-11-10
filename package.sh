#! /bin/bash --verbose
echo "PWD `pwd`"
for x in `ls charts` 
do
 echo "Current dir ... $x"
 helm dependency update charts/$x
done
helm lint charts/*
helm package charts/*
helm repo index --url https://rahul-jeswani.gihub.io .

