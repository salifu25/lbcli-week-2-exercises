# Create a SegWit address.
# Add funds to the address.
# Return only the Address
segaddr=$(bitcoin-cli -rpcwallet=btrustwallet getnewaddress "" "bech32")
bitcoin-cli generatetoaddress 1 $segaddr
echo $segaddr