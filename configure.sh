#!/bin/bash
echo "Downloading CodeIgniter v2.2.0"
wget https://github.com/EllisLab/CodeIgniter/archive/2.2.0.tar.gz -qO - | tar xz

echo "Preparing"
mkdir samples/application/bakaigniter
for dir in config helpers language libraries vendor; do
    mkdir samples/application/bakaigniter/$dir/
    cp -r $dir/* samples/application/bakaigniter/$dir/
    rm -rf $dir
done
unset dir

echo "Finishing"
cp -r samples/* CodeIgniter-2.2.0/
cp -r CodeIgniter-2.2.0/* .

echo "Cleaning"
rm -rf CodeIgniter-2.2.0
rm -rf samples
