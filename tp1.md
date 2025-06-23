TP1 - Docker
II. Un premier conteneur en vif

1. Simple run
🌞 Lancer un conteneur meow-api

```
   docker run -p 8000:8000 it4lik/meow-api
Unable to find image 'it4lik/meow-api:latest' locally
latest: Pulling from it4lik/meow-api
0c01110621e0: Pull complete
3b1eb73e9939: Pull complete
b1b8a0660a31: Pull complete
48b8862a18fa: Pull complete
20d0b4e6a2e6: Pull complete
77a6ac598bc1: Pull complete
5cc4a19fbac0: Pull complete
cb5bd488993b: Pull complete
3828cfa2baf2: Pull complete
Digest: sha256:51264a230802917353c166e1c4989fa94d22f632c8f10db2a8ff273d2a2887e4
Status: Downloaded newer image for it4lik/meow-api:latest
```

2.Visitons

- vérifier que le conteneur est actif avec une commande qui liste les conteneurs en cours de fonctionnement
- afficher les logs du conteneur
  ```
  PS C:\Users\nepht> docker ps
CONTAINER ID   IMAGE             COMMAND                  CREATED         STATUS         PORTS                    NAMES
d01718a8dcf0   it4lik/meow-api   "python3 -m http.ser…"   6 minutes ago   Up 4 minutes   0.0.0.0:8000->8000/tcp   condescending_booth
```
- afficher toutes les informations relatives au conteneur avec une commande docker inspect
```
  PS C:\Users\nepht> docker inspect d01718a8dcf0
[
    {
        "Id": "d01718a8dcf04bda715af04c15dfa6aa512f10b79edbeae85e2ef035cafb15d3",
        "Created": "2025-06-23T08:26:29.035752984Z",
        "Path": "python3",
        "Args": [
            "-m",
            "http.server",
            "8888"
        ],
        "State": {
            "Status": "running",
            "Running": true,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 641,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2025-06-23T08:28:45.998683623Z",
            "FinishedAt": "2025-06-23T08:28:39.109388504Z"
        },
        "Image": "sha256:bfaaa2024a8d22ea0b4f18f54148c2df9365f1ebe7090cc41439504bcf988a4e",
        "ResolvConfPath": "/var/lib/docker/containers/d01718a8dcf04bda715af04c15dfa6aa512f10b79edbeae85e2ef035cafb15d3/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/d01718a8dcf04bda715af04c15dfa6aa512f10b79edbeae85e2ef035cafb15d3/hostname",
        "HostsPath": "/var/lib/docker/containers/d01718a8dcf04bda715af04c15dfa6aa512f10b79edbeae85e2ef035cafb15d3/hosts",
        "LogPath": "/var/lib/docker/containers/d01718a8dcf04bda715af04c15dfa6aa512f10b79edbeae85e2ef035cafb15d3/d01718a8dcf04bda715af04c15dfa6aa512f10b79edbeae85e2ef035cafb15d3-json.log",
        "Name": "/condescending_booth",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": null,
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {}
            },
            "NetworkMode": "bridge",
            "PortBindings": {
                "8000/tcp": [
                    {
                        "HostIp": "",
                        "HostPort": "8000"
                    }
                ]
            },
            "RestartPolicy": {
                "Name": "no",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": null,
            "ConsoleSize": [
                49,
                120
            ],
            "CapAdd": null,
            "CapDrop": null,
            "CgroupnsMode": "host",
            "Dns": [],
            "DnsOptions": [],
            "DnsSearch": [],
            "ExtraHosts": null,
            "GroupAdd": null,
            "IpcMode": "private",
            "Cgroup": "",
            "Links": null,
            "OomScoreAdj": 0,
            "PidMode": "",
            "Privileged": false,
            "PublishAllPorts": false,
            "ReadonlyRootfs": false,
            "SecurityOpt": null,
            "UTSMode": "",
            "UsernsMode": "",
            "ShmSize": 67108864,
            "Runtime": "runc",
            "Isolation": "",
            "CpuShares": 0,
            "Memory": 0,
            "NanoCpus": 0,
            "CgroupParent": "",
            "BlkioWeight": 0,
            "BlkioWeightDevice": [],
            "BlkioDeviceReadBps": [],
            "BlkioDeviceWriteBps": [],
            "BlkioDeviceReadIOps": [],
            "BlkioDeviceWriteIOps": [],
            "CpuPeriod": 0,
            "CpuQuota": 0,
            "CpuRealtimePeriod": 0,
            "CpuRealtimeRuntime": 0,
            "CpusetCpus": "",
            "CpusetMems": "",
            "Devices": [],
            "DeviceCgroupRules": null,
            "DeviceRequests": null,
            "MemoryReservation": 0,
            "MemorySwap": 0,
            "MemorySwappiness": null,
            "OomKillDisable": false,
            "PidsLimit": null,
            "Ulimits": [],
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/asound",
                "/proc/acpi",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware",
                "/sys/devices/virtual/powercap"
            ],
            "ReadonlyPaths": [
                "/proc/bus",
                "/proc/fs",
                "/proc/irq",
                "/proc/sys",
                "/proc/sysrq-trigger"
            ]
        },
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/d28195a95ee804b09eb8a13f65e7345394a1620edfdff0ec98042b247c40c5cd-init/diff:/var/lib/docker/overlay2/6edac0e4c9c34c53484658333fb9e2ab8cf898dca8054acfee39c849e9c38bf3/diff:/var/lib/docker/overlay2/fd5aa3892cd1bc31e8aa19cda4a57a3fbf3c440ea3f9e8b201077623db045070/diff:/var/lib/docker/overlay2/e9c2bb0371af791a3707a54ac756463d3dc76ba2826ead8070b47aa41746bbf8/diff:/var/lib/docker/overlay2/7101abf0fbc657bd82e6c1e85c32a700998e7d1b99b9f1eab404c24a15b4142a/diff:/var/lib/docker/overlay2/e077e74b346423893418b36bba666ccab38580b68bd4efe18402d332f196a6e1/diff:/var/lib/docker/overlay2/417910ecdd03b6aa88e71b3dcb6aa61c16b5f6c066907f1e48f194ba182ca8f9/diff:/var/lib/docker/overlay2/a9eb33d76570b7e72221894d9c7e0f38e754621ebacd52d45ba1f1087f286cd9/diff:/var/lib/docker/overlay2/40fd0bec65915713e0587b913bb103ebb7cb535605d18f7ed3b81d610dadda33/diff:/var/lib/docker/overlay2/c2c2f87028c8ddcc11d7f0c748af02fd364bcff7becee2b508307a0248b54668/diff",
                "MergedDir": "/var/lib/docker/overlay2/d28195a95ee804b09eb8a13f65e7345394a1620edfdff0ec98042b247c40c5cd/merged",
                "UpperDir": "/var/lib/docker/overlay2/d28195a95ee804b09eb8a13f65e7345394a1620edfdff0ec98042b247c40c5cd/diff",
                "WorkDir": "/var/lib/docker/overlay2/d28195a95ee804b09eb8a13f65e7345394a1620edfdff0ec98042b247c40c5cd/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [],
        "Config": {
            "Hostname": "d01718a8dcf0",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": true,
            "AttachStderr": true,
            "ExposedPorts": {
                "8000/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305",
                "PYTHON_VERSION=3.13.5",
                "PYTHON_SHA256=93e583f243454e6e9e4588ca2c2662206ad961659863277afcdb96801647d640"
            ],
            "Cmd": [
                "8888"
            ],
            "Image": "it4lik/meow-api",
            "Volumes": null,
            "WorkingDir": "/app",
            "Entrypoint": [
                "python3",
                "-m",
                "http.server"
            ],
            "OnBuild": null,
            "Labels": {}
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "4e2f25e8cb5b8762690977904512de18ccf32ce3c137efadbcb6192bc000e227",
            "SandboxKey": "/var/run/docker/netns/4e2f25e8cb5b",
            "Ports": {
                "8000/tcp": [
                    {
                        "HostIp": "0.0.0.0",
                        "HostPort": "8000"
                    }
                ]
            },
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "d7f0a97988a0a7767c4262a60bb5664c4798c52d0752c8496dc91879a4a713cc",
            "Gateway": "172.17.0.1",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "172.17.0.2",
            "IPPrefixLen": 16,
            "IPv6Gateway": "",
            "MacAddress": "02:42:ac:11:00:02",
            "Networks": {
                "bridge": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": null,
                    "MacAddress": "02:42:ac:11:00:02",
                    "DriverOpts": null,
                    "NetworkID": "bcd7f1ee07aa82103ed6d8edb1a1e6f651eddf845d5f1930c071028207e8de1d",
                    "EndpointID": "d7f0a97988a0a7767c4262a60bb5664c4798c52d0752c8496dc91879a4a713cc",
                    "Gateway": "172.17.0.1",
                    "IPAddress": "172.17.0.2",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "DNSNames": null
                }
            }
        }
    }
]
```
- depuis le navigateur de votre PC, visiter la route / de l'API sur http://votre_ip:8000
  ```
  {
  "message": "Available routes",
  "routes": {
    "get_user_by_id": "http://localhost:8000/user/1",
    "list_all_users": "http://localhost:8000/users"
  }
}
```

  🌞 Lancer le conteneur en tâche de fond

- ajoutez -d à la commande
  PS C:\Users\nepht> docker run -p -d 8000:8888 it4lik/meow-api 

- Consultez les logs du conteneur
```
 PS C:\Users\nepht> docker run -d -p 8000:8888 it4lik/meow-api
 >>
 56710f2ab2db5562346a35d90ca6beb67406a3513a1d678ba823ad33ab8224ec
```
avec une commande docker logs

il faudra préciser l'ID ou le nom du conteneur en argument à la commande
