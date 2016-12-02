#!/bin/sh
#original luci - a69bd4202ecb92ceb009b7f4e5b9fd60328389ab packages - 6432150acc4f56b0256b02e2b4da4f4c5e59b7cb
cd feeds/luci && git checkout cad07f62d5babff35f8b39c341e5657d362d052a && cd-
./scripts/feeds install luci htop mtr luci-app-openvpn libcares libev bind-dig
