TP1 - Docker
II. Un premier conteneur en vif

1. Simple run
🌞 Lancer un conteneur meow-api


```bash
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
```bash
  PS C:\Users\nepht> docker ps
CONTAINER ID   IMAGE             COMMAND                  CREATED         STATUS         PORTS                    NAMES
d01718a8dcf0   it4lik/meow-api   "python3 -m http.ser…"   6 minutes ago   Up 4 minutes   0.0.0.0:8000->8000/tcp   condescending_booth
```
- afficher toutes les informations relatives au conteneur avec une commande docker inspect
```bash
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
```bash
  {
  "message": "Available routes",
  "routes": {
    "get_user_by_id": "http://localhost:8000/user/1",
    "list_all_users": "http://localhost:8000/users"
  }
```


  🌞 Lancer le conteneur en tâche de fond

- ajoutez -d à la commande
 ```bash
  PS C:\Users\nepht> docker run -d -p 8000:8000 it4lik/meow-api
7af873163851a1c1b388cfaaf901f269952ec8a4ce0416c03531c17b3a65069b
```
- Consultez les logs du conteneur avec une commande docker logs
```bash
  PS C:\Users\nepht> docker logs 7a
 * Serving Flask app 'app'
 * Debug mode: off.
 * Running on all addresses (0.0.0.0)
 * Running on http://127.0.0.1:8000
 * Running on http://172.17.0.2:8000 
```

2.Volumes

🌞 Remplacer le code app.py

vous devez écrire un ptit fichier de code Python écoute sur le port 8000 (comme mon API)
```bash
PS C:\Users\nepht> docker run -v C:\Users\nepht\meow\app.py:/app/app.py it4lik/meow-api
helloooo

curl http://localhost:8000

```

3. Variable d'environnement

🌞 Définir une variable d'environnement au lancement du conteneur

ajoutez une option sur le docker run pour lancer l'image it4lik/meow-api en définissant une variable d'environnement
doit définir la variable d'environnement mentionnée plus haut
écoutez sur le port 16789
```bash
PS C:\Users\nepht> docker run -d -p 16789:16789 -e LISTEN_PORT=16789 it4lik/meow-api
b900f5b04215cb9c94d7415af48ff32a7b006c8484f941bcd858e4ddcb51c2f3

curl http://localhost:16789
Hello world
```


PARTIE 2
🌞 Récupérez des images

avec la commande docker pull

récupérez :

l'image python officielle en version 3.11 (python:3.11 pour la dernière version)
l'image mysql officielle en version 8.0.42
l'image wordpress officielle en dernière version

c'est le tag :latest pour récupérer la dernière version
si aucun tag n'est précisé, :latest est automatiquement ajouté


l'image linuxserver/wikijs en dernière version
```bash
docker pull python:3.11
docker pull mysql:8.0.4
docker pull wordpress:latest
docker pull linuxserver/wikijs:latest
``` 

listez les images que vous avez sur la machine avec une commande docker
```bash
docker images
PS C:\Users\nepht> docker images
REPOSITORY                                      TAG       IMAGE ID       CREATED        SIZE
it4lik/meow-api                                 latest    b91b5ab0010d   5 hours ago    234MB
it4lik/meow-api                                 <none>    bfaaa2024a8d   6 days ago     1.02GB
linuxserver/wikijs                              latest    5dbb81dacc62   9 days ago     484MB
python                                          3.11      98b8dc21a9bf   2 weeks ago    1.01GB
wordpress                                       latest    7ae09634a9ff   7 weeks ago    703MB
ubuntu                                          latest    a04dc4851cbc   4 months ago   78.1MB
hello-world                                     latest    74cc54e27dc4   5 months ago   10.1kB
docker.elastic.co/elasticsearch/elasticsearch   7.17.10   a305059888ba   2 years ago    622MB
docker.elastic.co/kibana/kibana                 7.17.10   ba4afcebad69   2 years ago    811MB
docker.elastic.co/logstash/logstash             7.17.10   1fe6f316b8af   2 years ago    782MB
mysql                                           8.0.4     96dd4fed4359   7 years ago    291MB

```

🌞 Lancez un conteneur à partir de l'image Python
lancez un terminal bash ou sh à l'intérieur du conteneur
vérifiez que la commande python est installée dans le conteneur, à la bonne version
```bash
docker run -it python:3.11 bash
PS C:\Users\nepht> docker run -it python:3.11 bash
root@882f90ef5264:/# python --version
Python 3.11.13
```

II. Construire une image
A. Build la meow-api
🌞 Récupérer le code et le Dockerfile sur votre machine
🌞 Build une image meow-api
```bash
PS C:\Users\nepht> cd meow-api
PS C:\Users\nepht\meow-api> docker build . -t meow-api
[+] Building 14.5s (8/8) FINISHED                                                                                                                docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                             0.2s
 => => transferring dockerfile: 129B                                                                                                                             0.0s 
 => [internal] load metadata for docker.io/library/python:3.11-slim                                                                                              6.0s
 => [internal] load .dockerignore                                                                                                                                0.2s
 => => transferring context: 2B                                                                                                                                  0.0s 
 => [internal] load build context                                                                                                                                0.2s
 => => transferring context: 51B                                                                                                                                 0.0s
 => [1/3] FROM docker.io/library/python:3.11-slim@sha256:9e1912aab0a30bbd9488eb79063f68f42a68ab0946cbe98fecf197fe5b085506                                        5.7s 
 => => resolve docker.io/library/python:3.11-slim@sha256:9e1912aab0a30bbd9488eb79063f68f42a68ab0946cbe98fecf197fe5b085506                                        0.1s 
 => => sha256:9e1912aab0a30bbd9488eb79063f68f42a68ab0946cbe98fecf197fe5b085506 9.13kB / 9.13kB                                                                   0.0s 
 => => sha256:cfa2a40862158178855ab4f7cf6b9341646f826b0467a7b72bdeac68b03986bb 1.75kB / 1.75kB                                                                   0.0s 
 => => sha256:be3324b8ee1a17161c5fa4a20f310d4af42cbb4f22a1e7a32a98ee9196a6defd 5.37kB / 5.37kB                                                                   0.0s 
 => => sha256:15658014cd85cd0d8b913d50b4388228aebcf0437d43cfb37e8a5177e8b2bcf8 248B / 248B                                                                       0.3s 
 => => sha256:799440a7bae7c08a5fe9d9e5a1ccd72fc3cbf9d85fa4be450e12b8550175c620 3.51MB / 3.51MB                                                                   1.6s 
 => => sha256:9596beeb5a6dc0950529870568799000e8d73fb678969ac2f485005cd5da1087 16.21MB / 16.21MB                                                                 2.3s 
 => => extracting sha256:799440a7bae7c08a5fe9d9e5a1ccd72fc3cbf9d85fa4be450e12b8550175c620                                                                        0.8s 
 => => extracting sha256:9596beeb5a6dc0950529870568799000e8d73fb678969ac2f485005cd5da1087                                                                        2.1s 
 => => extracting sha256:15658014cd85cd0d8b913d50b4388228aebcf0437d43cfb37e8a5177e8b2bcf8                                                                        0.0s 
 => [2/3] COPY app.py /app/app.py                                                                                                                                1.3s 
 => [3/3] WORKDIR /app                                                                                                                                           0.2s 
 => exporting to image                                                                                                                                           0.4s 
 => => exporting layers                                                                                                                                          0.2s 
 => => writing image sha256:c0caba471e489ef4cd577f2f479209bf4144e74f41f4e2af4d5757f4af802f86                                                                     0.0s 
 => => naming to docker.io/library/meow-api                                                                                                                      0.0s 

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/w04n8bcb0n7etwl6t23awmyae
```

🌞 Afficher la liste des images dispos sur votre machine

dans la sortie de la commande, on devrait voir meow-api que vous venez de build
```bash
PS C:\Users\nepht\meow-api> docker images
REPOSITORY                                      TAG       IMAGE ID       CREATED         SIZE  
meow-api                                        latest    c0caba471e48   7 minutes ago   130MB 
it4lik/meow-api                                 latest    b91b5ab0010d   5 hours ago     234MB 
it4lik/meow-api                                 <none>    bfaaa2024a8d   6 days ago      1.02GB
linuxserver/wikijs                              latest    5dbb81dacc62   10 days ago     484MB 
python                                          3.11      98b8dc21a9bf   2 weeks ago     1.01GB
wordpress                                       latest    7ae09634a9ff   7 weeks ago     703MB 
ubuntu                                          latest    a04dc4851cbc   4 months ago    78.1MB
hello-world                                     latest    74cc54e27dc4   5 months ago    10.1kB
docker.elastic.co/elasticsearch/elasticsearch   7.17.10   a305059888ba   2 years ago     622MB 
docker.elastic.co/kibana/kibana                 7.17.10   ba4afcebad69   2 years ago     811MB 
docker.elastic.co/logstash/logstash             7.17.10   1fe6f316b8af   2 years ago     782MB 
mysql                                           8.0.4     96dd4fed4359   7 years ago     291MB 
```

🌞 Run cette image

faites un docker run qui lance l'image nouvellement build
```bash
PS C:\Users\nepht\meow-api> docker run -d -p 8080:8000 meow-api
>>
a1d950f7ca0b750749dfbeab4d712f33c5f7ca407618a1bb0d4934aff3903d19
```
B. Packagez vous-meme un app
🌞 Ecrire un Dockerfile pour packager ce code

```bash
FROM python:3.11-slim

WORKDIR /app
COPY app.py .

RUN pip install emoji

CMD ["python", "app.py"]
```


🌞 Build l'image

déplace-toi dans ton répertoire
docker build . -t python_app:version_de_ouf
```bash
PS C:\Users\nepht\emoji-app> docker build . -t python_app:version_de_ouf
>>
[+] Building 8.4s (9/9) FINISHED                                                                                                                 docker:desktop-linux
 => [internal] load build definition from Dockerfile                                                                                                             0.2s
 => => transferring dockerfile: 144B                                                                                                                             0.0s 
 => [internal] load metadata for docker.io/library/python:3.11-slim                                                                                              1.3s
 => [internal] load .dockerignore                                                                                                                                0.1s
 => => transferring context: 2B                                                                                                                                  0.0s 
 => CACHED [1/4] FROM docker.io/library/python:3.11-slim@sha256:9e1912aab0a30bbd9488eb79063f68f42a68ab0946cbe98fecf197fe5b085506                                 0.0s
 => [internal] load build context                                                                                                                                0.2s 
 => => transferring context: 132B                                                                                                                                0.0s
 => [2/4] WORKDIR /app                                                                                                                                           0.2s 
 => [3/4] COPY app.py .                                                                                                                                          0.1s
 => [4/4] RUN pip install emoji                                                                                                                                  5.4s 
 => exporting to image                                                                                                                                           0.5s 
 => => exporting layers                                                                                                                                          0.4s 
 => => writing image sha256:9b68999be1a3e2a97499e12133293afaace88d213c2e6d595eef70a17983ed6e                                                                     0.0s 
 => => naming to docker.io/library/python_app:version_de_ouf                                                                                                     0.0s 

View build details: docker-desktop://dashboard/build/desktop-linux/desktop-linux/p5lc4zfct5t56esv1sce9537a
```

🌞 Proof !
```bash
PS C:\Users\nepht\emoji-app> docker images
REPOSITORY                                      TAG              IMAGE ID       CREATED              SIZE
python_app                                      version_de_ouf   9b68999be1a3   About a minute ago   146MB
meow-api                                        latest           c0caba471e48   46 minutes ago       130MB
it4lik/meow-api                                 latest           b91b5ab0010d   6 hours ago          234MB

```


🌞 Lancer l'image
```bash
PS C:\Users\nepht\emoji-app> docker run python_app:version_de_ouf
Cet exemple d'application est vraiment naze 👎
```



