APIKEY="bab2b9bd-5a9c-40eb-8741-5ff485ed53aa"
API="https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest"
CURRENCY="USD"

PRICE=$(curl -H "X-CMC_PRO_API_KEY: $APIKEY" -H "Accept: application/json" -d "start=1&limit=1&convert=$CURRENCY" -G \
$API 2>/dev/null |\grep -i "price" | cut -b 30-36)

echo $PRICE
