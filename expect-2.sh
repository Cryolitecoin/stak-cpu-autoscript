#!/usr/bin/expect -f
spawn ./xmr-stak --currency cryptonight_lite_v7 -o triton.clevery.xyz:9202 -u Tw1Wf4BYraTYsWMA7SRiQbTLHpzoVueedCsDBjXAF6tZC9Fjjw7s1pnhTfMjeAMcZJ7JMKipyfSTYdRiAAagUNae28hB14UFA -p x
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "0\r"
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect -re "Pool configuration stored in file 'pools.txt'"
set timeout 60
expect eof

