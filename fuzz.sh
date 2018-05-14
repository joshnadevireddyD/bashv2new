#!/bin/bash
delay=${1:-15}
sleep $(( ${RANDOM} % ${delay} ))
