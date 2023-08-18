cargo test
read -p "Continue? (Y/n) " -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cd contracts/cw721-base
    RUSTFLAGS='-C link-arg=-s' cargo wasm
    cd ../../
    cp target/wasm32-unknown-unknown/release/cw721_base.wasm ./injective721.wasm
    ls -l injective721.wasm
    sha256sum injective721.wasm
    echo "Finished"
elif [[ $REPLY =~ ^[Nn]$ ]]
then 
    echo "Aborted"
fi