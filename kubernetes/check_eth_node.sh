read -p "Enter the Ethereum Service ClusterIP: " clusterIP
curl -X POST http://${clusterIP}:30002 -H "Content-Type: application/json" --data '{"jsonrpc":"2.0","method":"eth_syncing","params":[],"id":1}'
