#!/bin/bash
find . -exec grep -l "From: MAILER-DAEMON" {} \; | xargs rm -rvf '{}'
