STOCK_ID="$1"
cp ../TaiwanStockMonitor/${STOCK_ID}.txt ./
git add .
info=`git diff ${STOCK_ID}.txt`
git commit -am "Update ${STOCK_ID} information - ${info}"
git push

