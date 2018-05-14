#!/bin/bash
Define variables:
txtund=$(tput sgr 0 1)    
txtbld=$(tput bold)       
txtred=$(tput setaf 1)    
txtgrn=$(tput setaf 2)    
txtylw=$(tput setaf 3)    
txtblu=$(tput setaf 4)    
txtpur=$(tput setaf 5)    
txtcyn=$(tput setaf 6)    
txtwht=$(tput setaf 7)    
txtrst=$(tput sgr0)      

Use them as:
echo "${txtbld}This is bold text output from shell script${txtrst}"
echo "${txtred}This is coloured red except ${txtblu}this is blue${txtrst}"
