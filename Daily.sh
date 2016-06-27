
STOCK_ID="2498"
HOUR_RUN_STOCK=16
MINUTE_RUN_STOCK=21

while [ 1 ]
do
    HOUR=`date +"%H"`
    MINUTE=`date +"%M"`
    DAY_OF_WEEK=`date +"%u"`
    NOT_UPDATE_FILE_NAME="notupdate"
    if [ -f "$NOT_UPDATE_FILE_NAME" ]
    then
        echo "$NOT_UPDATE_FILE_NAME found. So we don't do update."
    else
    if [ "$DAY_OF_WEEK" == "1" ] || [ "$DAY_OF_WEEK" == "2" ] || [ "$DAY_OF_WEEK" == "3" ] || [ "$DAY_OF_WEEK" == "4" ] || [ "$DAY_OF_WEEK" == "5" ] ; then
    echo "Monitor ${STOCK_ID} at 星期${DAY_OF_WEEK}, ${HOUR}點${MINUTE}分"
        if [ "$HOUR" == "$HOUR_RUN_STOCK" ] && [ "$MINUTE" == "$MINUTE_RUN_STOCK" ]; then
            ./sync_2_github.sh ${STOCK_ID} 
        fi
    else
        echo "Today is Saturday or Sunday. You should go to outside and do some exercise."
    fi
    fi
    sleep 60
done
