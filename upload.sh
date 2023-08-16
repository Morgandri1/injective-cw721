# inside the "injective-core-v1.10.1" container
yes 12345678 | injectived tx wasm store injective721.wasm \
--from=inj1wjsdqxghx9998zc303m5wtadwrz5y8946js5c9 \
--chain-id="injective-888" \
--yes --gas-prices=500000000inj --gas=20000000 \
--node=https://k8s.testnet.tm.injective.network:443