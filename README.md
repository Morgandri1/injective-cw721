# injective cw721 spec nfts
This repository is a copy of the [cw721 spec](https://github.com/CosmWasm/cw-nfts) repository, with the cw2981 contract removed for tidyness, along with some minor changes to documentation regarding Injective deployment. this contract will become the Nebula-5 standard. 

![Tests](https://github.com/morgandri1/injective-cw721/actions/workflows/rust.yml/badge.svg)

# Purpose
This repository aims to open source the Cosmwasm CW721 spec NFT contract version 18. 

# Why?
Talis protocol currently has a monopoly on mint contracts for INJ. All mint contracts are owned by talis which is horrible for decentrilization and ownership. 

# Running
To only test this contract, just run ``cargo test``. 

if you want to test and compile this contract, you can run ``sh compile.sh``. this script works on POSIX systems as long as you have sha256sum installed. if you're on linux, this is installed automatically (``man sha256sum``) if you're on macos, you can install it using homebrew: ``brew install coreutils``.

# Deploying to testnet 
You will need:
- [Injectived](https://docs.injective.network/develop/tools/injectived/install)
- Basic command-line knowledge 

Firstly, to run injectived we recommend a linux machine of some kind with root access as some POSIX don't play nicely when you try to add tools to `/usr/bin`. 

## setting up injectived
you'll need to setup an injectived keychain account with `injectived keys add <username>` this username can be whatever you want, it really doesnt matter.

When you run this command it will ask you to create/input your injectived keychain password, then it will spit out an address.

use this command (`export INJ_ADDRESS=<address>`) to set this address as your deployment address, then go to the [inj faucet](https://faucet.injective.network/) to set it up. we recommend a few INJ so you're not running short any time soon.

## Building the contract
This part is easy. we have it set up so you can just run `sh compile.sh` and then you're off. If you're on a zsh terminal, you may need to run `bash compile.sh` so that the prompts work as intended. this will output a `injective721.wasm` file to the project root, and you can then upload it using `upload.sh`.

## uploading
`upload.sh` will ask you for your injectived keychain password. it will then begin to upload the contract, then spit out the result.

for later use, you'll want to copy the transaction hash.

## Interacting
run `injectived query tx <hash>` to get useful info like the code_id, which you'll need to interact with the contract. set the code_id as a local variable using `export CODE_ID=<code_id>`

you can init the contract by running `init.sh <name> <description> <symbol> <max-tokens>`