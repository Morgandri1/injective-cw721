if [[ $# < 3 ]]
then 
    exit 0

INIT='{"sender":"'$INJ_ADDRESS'","codeId":"'$CODE_ID'","label":"Instantiate CW721","msg":"","fundsList":[],"name":"$1","description":"<p>$2</p>","minter":"'$INJ_ADDRESS'","symbol":"$3","max_supply": $4}'
injectived tx wasm instantiate $CODE_ID $INIT --label="Instantiate CW721" --from=$(echo $INJ_ADDRESS) --chain-id="injective-888" --yes --gas-prices=500000000inj --gas=20000000 --no-admin --node=https://k8s.testnet.tm.injective.network:443