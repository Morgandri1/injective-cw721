cargo test
read -p "Continue? (Y/n) " -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
    RUSTFLAGS='-C link-arg=-s' cargo wasm
    cp target/wasm32-unknown-unknown/release/injective721.wasm .
    ls -l injective721.wasm
    sha256sum injective721.wasm
    echo "Finished"
elif [[ $REPLY =~ ^[Nn]$ ]]
then 
    echo "Aborted"
fi