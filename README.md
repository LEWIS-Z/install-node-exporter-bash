# install-node-exporter-bash
a bash to pull and install node-exporter from  https://github.com/prometheus/node_exporter/releases/download/v0.16.0/node_exporter-0.16.0.linux-amd64.tar.gz

## bash:
```shell
wget https://raw.githubusercontent.com/LEWIS-Z/install-node-exporter-bash/main/install-node-exporter.sh && bash install-node-exporter.sh
```

## check if work:
```shell
$ systemctl status node_exporter
● node_exporter.service - node_exporter
     Loaded: loaded (/lib/systemd/system/node_exporter.service; enabled; vendor preset: enabled)
     Active: active (running) since Thu 2023-12-28 17:47:27 CST; 4s ago
       Docs: https://prometheus.io/
   Main PID: 732248 (node_exporter)
      Tasks: 3 (limit: 2308)
     Memory: 1.8M
     CGroup: /system.slice/node_exporter.service
             └─732248 /usr/bin/node_exporter

Dec 28 17:47:27 iZ0xicnhpkjve9dk323gxwZ node_exporter[732248]: time="2023-12-28T17:47:27+08:00" level=info msg=" - stat" source="node_exporter.go:97"
Dec 28 17:47:27 iZ0xicnhpkjve9dk323gxwZ node_exporter[732248]: time="2023-12-28T17:47:27+08:00" level=info msg=" - textfile" source="node_exporter.go:97"
Dec 28 17:47:27 iZ0xicnhpkjve9dk323gxwZ node_exporter[732248]: time="2023-12-28T17:47:27+08:00" level=info msg=" - time" source="node_exporter.go:97"
Dec 28 17:47:27 iZ0xicnhpkjve9dk323gxwZ node_exporter[732248]: time="2023-12-28T17:47:27+08:00" level=info msg=" - timex" source="node_exporter.go:97"
Dec 28 17:47:27 iZ0xicnhpkjve9dk323gxwZ node_exporter[732248]: time="2023-12-28T17:47:27+08:00" level=info msg=" - uname" source="node_exporter.go:97"
Dec 28 17:47:27 iZ0xicnhpkjve9dk323gxwZ node_exporter[732248]: time="2023-12-28T17:47:27+08:00" level=info msg=" - vmstat" source="node_exporter.go:97"
Dec 28 17:47:27 iZ0xicnhpkjve9dk323gxwZ node_exporter[732248]: time="2023-12-28T17:47:27+08:00" level=info msg=" - wifi" source="node_exporter.go:97"
Dec 28 17:47:27 iZ0xicnhpkjve9dk323gxwZ node_exporter[732248]: time="2023-12-28T17:47:27+08:00" level=info msg=" - xfs" source="node_exporter.go:97"
Dec 28 17:47:27 iZ0xicnhpkjve9dk323gxwZ node_exporter[732248]: time="2023-12-28T17:47:27+08:00" level=info msg=" - zfs" source="node_exporter.go:97"
Dec 28 17:47:27 iZ0xicnhpkjve9dk323gxwZ node_exporter[732248]: time="2023-12-28T17:47:27+08:00" level=info msg="Listening on :9100" source="node_exporter.go:111
```
