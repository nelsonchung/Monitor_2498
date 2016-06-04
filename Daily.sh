
STOCK_ID="2498"
HOUR_RUN_STOCK=16
MINUTE_RUN_STOCK=18

while [ 1 ]
do
    HOUR=`date +"%H"`
    MINUTE=`date +"%M"`
    DAY_OF_WEEK=`date +"%u"`
    if [ "$DAY_OF_WEEK" == "1" ] || [ "$DAY_OF_WEEK" == "2" ] || [ "$DAY_OF_WEEK" == "3" ] || [ "$DAY_OF_WEEK" == "4" ] || [ "$DAY_OF_WEEK" == "5" ] ; then
    echo "Monitor ${STOCK_ID} at 星期${DAY_OF_WEEK}, ${HOUR}點${MINUTE}分"
        if [ "$HOUR" == "$HOUR_RUN_STOCK" ] && [ "$MINUTE" == "$MINUTE_RUN_STOCK" ]; then
            cp ../TaiwanStockMonitor/${STOCK_ID}.txt ./
            git add .
            git commit -am "Update ${STOCK_ID} information"
            git push
        fi
    fi
    sleep 60
done
