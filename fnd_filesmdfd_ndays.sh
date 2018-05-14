#!/bin/bash
find *.sql -mtime +n -exec ls -l --sort=time {} \;
