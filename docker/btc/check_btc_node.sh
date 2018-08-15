basic_auth_token="$(sudo cat /data/btc-live/.cookie | base64 -w 0)";
curl http://127.0.0.1:30001 -H "Content-Type: application/json" -H "Authorization: Basic $basic_auth_token"  --data '{"jsonrpc": "2.0", "method": "getblockchaininfo", "id": 1}'
