#!bin/bash
jar tf "$1" | grep '/.*\.class$' | xargs dirname | sort -u | tr / .

