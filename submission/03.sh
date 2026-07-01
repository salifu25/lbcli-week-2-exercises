# Create a SegWit address.
# Add funds to the address.
# Return only the Address
segaddr=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32")

mineaddr=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress)

bitcoin-cli -regtest generatetoaddress 101 "$mineaddr" >/dev/null

bitcoin-cli -regtest -rpcwallet=btrustwallet sendtoaddress "$segaddr" 1 >/dev/null

bitcoin-cli -regtest generatetoaddress 1 "$mineaddr" >/dev/null

echo "$segaddr"