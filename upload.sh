# inside the "injective-core-v1.10.1" container
yes 12345678 | injectived tx wasm store injective721.wasm \
--from=inj1egav7klxhfd5cmrr7klwewyl56khwg4gmfue6a \
--chain-id="injective-888" \
--yes --gas-prices=500000000inj --gas=20000000 \
--node=https://k8s.testnet.tm.injective.network:443