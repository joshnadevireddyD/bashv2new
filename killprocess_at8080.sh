#!bin/bash
lsof -i :8080 | awk 'NR > 1 {print $2}' | xargs --no-run-if-empty kill
lsof -i :8080 | awk '{print $2}' | tail -n 1 | xargs kill
