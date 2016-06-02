
STOCK_ID="2498"
cp ../TaiwanStockMonitor/${STOCK_ID}.csv ./
git add .
git commit -am "Update ${STOCK_ID} information"
git push
