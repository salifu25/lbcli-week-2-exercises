# Create a SegWit address.
# Add funds to the address.
# Return only the Address
segaddr=$(bitcoin-cli -regtest getnewaddress "" "bech32")
bitcoin-cli -regtest generatetoaddress 101 "$segaddr" > /dev/null
echo "$segaddr"