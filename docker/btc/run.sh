sudo mkdir -p /data/btc-live
sudo docker run --name btc-live -v /data/btc-live:/app/data -p 30001:8332 -p 8333:8333 -td btc-img
