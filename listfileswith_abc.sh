#!/bin/bash
find / -type f -exec grep -H 'abc' {} \;
