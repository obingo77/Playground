#!/bin/bash
#
#Script variables
#
quote_url=www.quotationspage.com/qotd.html
#
## Check url validity##
#
check_url=$(wget -nv --spider $quote_url 2>&1)
#
if [[ $check_url == *error404* ]]
then
    echo "Bad web address"
    echo "$quote_url invalid"
    echo "Exiting script"
    exit
fi

# Download Web info
#
wget -o /tmp/quote.log -O /tmp/qoute.html $quote_url
#
#Exract data i need 
#
sed 's/<[^>]*//g' /tmp/qoute.html |
grep "$(date +%B' '%-d,''%Y)" -A2 |
sed 's/>//g' |
sed '/&nbsp;/{n ; d}' |
gawk 'BEGIN{FS="&nbsp;"} {print $1}' |
tee /tmp/daily_quote.txt > /dev/null
#
exit
    
    
