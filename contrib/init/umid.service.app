[Unit]
Description=UMI's distributed currency daemon
After=network.target

[Service]
User=umi
Group=umi

Type=forking
PIDFile=/var/lib/umid/umid.pid

ExecStart=/usr/bin/umid -daemon -pid=/var/lib/umid/umid.pid \
          -conf=/etc/umi/umi.conf -datadir=/var/lib/umid

ExecStop=-/usr/bin/umi-cli -conf=/etc/umi/umi.conf \
         -datadir=/var/lib/umid stop

Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=2s
StartLimitInterval=120s
StartLimitBurst=5

[Install]
WantedBy=multi-user.target
