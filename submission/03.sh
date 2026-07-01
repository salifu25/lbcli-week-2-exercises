# Create a SegWit address.
# Add funds to the address.
# Return only the Address
segaddr=$(bitcoin-cli -regtest getnewaddress "" "bech32")
bitcoin-cli -regtest generatetoaddress 1 "$segaddr" > /dev/null
echo "$segaddr"