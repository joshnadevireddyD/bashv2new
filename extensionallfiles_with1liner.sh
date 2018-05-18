#!/bin/bash
for file in `ls *.asl`; do
sudo mv $file `basename $file .asl`.asl_old; done
