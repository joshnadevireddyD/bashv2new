#!/bin/bash
perl -pi -e "s/kedar/radek/g" a.txt
perl -pi -e "s/OLDTEXT=OLDVALUE/NewText=NewValue/g" *.*
