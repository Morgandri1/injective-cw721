![Tests](https://github.com/morgandri1/injective-cw721/actions/workflows/rust.yml/badge.svg)

# Purpose
This repository aims to open source the Cosmwasm CW721 spec NFT contract version 18. 

# Why?
Talis protocol currently has a monopoly on mint contracts for INJ. All mint contracts are owned by talis which is horrible for decentrilization and ownership. 

# Running
To only test this contract, just run ``cargo test``. 

if you want to test and compile this contract, you can run ``sh compile.sh``. this script works on POSIX systems as long as you have sha256sum installed. if you're on linux, this is installed automatically (``man sha256sum``) if you're on macos, you can install it using homebrew: ``brew install coreutils``.

# Deploying to testnet 
currently, this is not possible without a node. Nebula is working to bring a node online and then build a public governance proposal portal. 