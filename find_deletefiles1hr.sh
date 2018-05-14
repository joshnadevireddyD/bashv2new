#!/bin/bash
find /some/dir -type f -mmin +60 | xargs rm -f
find . -cmin +60 -exec rm -f {} \;
