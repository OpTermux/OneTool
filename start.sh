# !/bin/sh
 
 
printf "\033[1;36m #######################################################\n" 
printf "\033[1;36m ##                     OpTermux                      ##\n" 
printf "\033[1;36m ##  If you get any error comment me I help you 24*7  ##\n"
printf "\033[1;36m #######################################################\n" 
 
# Input type of operation

echo "Enter Choice :"
echo "1. Passwd Generator"
echo "2. Strength Checker" 
           

read ch

# Switch Case to perform selection
case $ch in
 
  1) echo "Your Strong passwd :- "
  res=`
  openssl rand -base64 14
  
  `
     ;;

  
  2) echo "Enter the password"
  res=`


read password


len="${#password}"


 


if test $len -ge 8 ; then


 


    echo "$password" | grep -q [0-9]


     if test $? -eq 0 ; then


           echo "$password" | grep -q [A-Z]


                if test $? -eq 0 ; then


                    echo "$password" | grep -q [a-z]   


                      if test $? -eq 0 ; then


                       echo "Strong password"


                   else


                       echo "weak password include lower case char"


                   fi


            else


               echo "weak password include capital char" 


            fi


     else


       echo "please include the numbers in password it is weak password"   


     fi


else


    echo "password lenght should be greater than or equal 8 hence weak password"


fi
`
  ;;
  
  
esac
echo " $res"


















