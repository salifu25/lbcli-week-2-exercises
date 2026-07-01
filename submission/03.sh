# Create a SegWit address.
# Add funds to the address.
# Return only the Address
segaddr=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32")

bitcoin-cli -regtest -rpcwallet=btrustwallet sendtoaddress "$segaddr" 1 >/dev/null

test=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress)
bitcoin-cli -regtest generatetoaddress 1 "$test" >/dev/null

echo "$segaddr"