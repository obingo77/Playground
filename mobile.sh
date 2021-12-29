# this script automates txt msgs
#!/bin/bash
#
phone="+447735840420"
SMSrelay_url=http://textbelt.com/text
text_message="testing 1..2"
#
#Send a txt msg
##############
curl -s $SMSrelay_url -d \
number=$phone \
-d "message=$text_message" > /dev/null
#
exit

