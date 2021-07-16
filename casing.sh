function rotate
{

while :
do
   (( RCOUNT = RCOUNT + 1 ))
   
   case $RCOUNT in
       1) echo '-'"\b\c"
            sleep $INTERVAL
           ;;
       2) echo '-'"\b\c"
            sleep $INTERVAL
           ;;
       3) echo '-'"\b\c"
            sleep $INTERVAL
           ;;  
       4) echo '-'"\b\c"
            sleep $INTERVAL
           ;;   
           
        *)  RCOUNT="0" 
        
    esac
done    

}
