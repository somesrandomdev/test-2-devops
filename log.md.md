Welcome to Ubuntu 24.04.3 LTS (GNU/Linux 6.6.87.2-microsoft-standard-WSL2 x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

 System information as of Fri Oct 17 10:22:41 UTC 2025

  System load:  1.49                Processes:             54
  Usage of /:   0.2% of 1006.85GB   Users logged in:       0
  Memory usage: 4%                  IPv4 address for eth0: 172.18.80.230
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

This message is shown once a day. To disable it please create the
/home/khalill/.hushlogin file.
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill$ ls
 AppData
'Application Data'
 Contacts
 Cookies
 Desktop
 Diamofranchiser
 Documents
 Downloads
 Favorites
 IntelGraphicsProfiles
 Links
'Local Settings'
 Music
'My Documents'
 NTUSER.DAT
 NTUSER.DAT{2ad838bc-efea-11ee-a54d-000d3a94eaa1}.TM.blf
 NTUSER.DAT{2ad838bc-efea-11ee-a54d-000d3a94eaa1}.TMContainer00000000000000000001.regtrans-ms
 NTUSER.DAT{2ad838bc-efea-11ee-a54d-000d3a94eaa1}.TMContainer00000000000000000002.regtrans-ms
 NetHood
 Pictures
 PrintHood
 Recent
'Saved Games'
 Searches
 SendTo
'Start Menu'
 Templates
 Videos
 ci-playground
 diamo
 diamo-apps
 diamo-franchise
 diamo-new
 diamocrm
 diamodono
 docs
 exercises
 exo2devops
 github-actions-practice
 hello-page
 koovaks
 mboamuse
 myapp
 node_modules
 ntuser.dat.LOG1
 ntuser.dat.LOG2
 ntuser.ini
 package-lock.json
 package.json
 project
 python-ci-matrix
 scripts
 sigma
'test grok code'
 weekly-planner
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill$ cd  myapp
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ ls
Dockerfile  package.json  server.js
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ docker build -t myapp:latest .
ERROR: permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Head "http://%2Fvar%2Frun%2Fdocker.sock/_ping": dial unix /var/run/docker.sock: connect: permission denied
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker build -t myapp:latest .
[sudo] password for khalill: 
[+] Building 4.0s (7/9)                                                                             docker:default
 => [internal] load build definition from Dockerfile                                                          0.2s
 => => transferring dockerfile: 338B                                                                          0.1s 
 => [internal] load metadata for docker.io/library/node:lts                                                   3.0s
 => [internal] load .dockerignore                                                                             0.1s
 => => transferring context: 2B                                                                               0.0s 
 => CANCELED [1/5] FROM docker.io/library/node:lts@sha256:2bb201f33898d2c0ce638505b426f4dd038cc00e5b2b4cbba1  0.3s
 => => resolve docker.io/library/node:lts@sha256:2bb201f33898d2c0ce638505b426f4dd038cc00e5b2b4cbba17b069f0ff  0.1s 
 => => sha256:a510685941c51f03994e23e2ceb64ba6b56c8085e0edfa2a5ab5c8b706fa43ee 2.49kB / 2.49kB                0.0s 
 => => sha256:dc063a0d13f43a8455c198dbc3df23f3c18eb7d15e52c7701942002eb85784da 6.63kB / 6.63kB                0.0s
 => => sha256:2bb201f33898d2c0ce638505b426f4dd038cc00e5b2b4cbba17b069f0fff1496 6.41kB / 6.41kB                0.0s
 => => sha256:5fb1b35a6fc14463ada297f3f0605409cbfe29368b38fd5d1e41f7dcf29bb6fb 0B / 64.40MB                   0.3s 
 => => sha256:db3dba6026a3c551d6b8e98308c073fff4fd569fd2fc61f21384cb996da82c9e 0B / 24.03MB                   0.3s
 => [internal] load build context                                                                             0.2s 
 => => transferring context: 549B                                                                             0.0s 
 => CACHED [2/5] WORKDIR /app                                                                                 0.0s 
 => ERROR [3/5] COPY package.json package-lock.json ./                                                        0.0s 
------
 > [3/5] COPY package.json package-lock.json ./:
------
Dockerfile:8
--------------------
   6 |
   7 |     # Copy necessary files
   8 | >>> COPY package.json package-lock.json ./
   9 |     COPY server.js ./
  10 |
--------------------
ERROR: failed to solve: failed to compute cache key: failed to calculate checksum of ref 9b8ae096-b2a5-4862-b6b2-bc03ab3e41b1::4w34z8xyfztzypuysucpxn3c0: "/package-lock.json": not found
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ npm install

added 69 packages, and audited 70 packages in 6s

14 packages are looking for funding
  run `npm fund` for details

found 0 vulnerabilities
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker build -t myapp:latest .
[+] Building 97.3s (10/10) FINISHED                                                                 docker:default
 => [internal] load build definition from Dockerfile                                                          0.1s
 => => transferring dockerfile: 338B                                                                          0.0s 
 => [internal] load metadata for docker.io/library/node:lts                                                   0.7s 
 => [internal] load .dockerignore                                                                             0.1s
 => => transferring context: 2B                                                                               0.0s 
 => [1/5] FROM docker.io/library/node:lts@sha256:2bb201f33898d2c0ce638505b426f4dd038cc00e5b2b4cbba17b069f0f  88.6s
 => => resolve docker.io/library/node:lts@sha256:2bb201f33898d2c0ce638505b426f4dd038cc00e5b2b4cbba17b069f0ff  0.1s 
 => => sha256:c6b11972fd12973831818babf60f1ffc1c4047507943d132dffc612884022858 48.48MB / 48.48MB             17.6s 
 => => sha256:a510685941c51f03994e23e2ceb64ba6b56c8085e0edfa2a5ab5c8b706fa43ee 2.49kB / 2.49kB                0.0s
 => => sha256:dc063a0d13f43a8455c198dbc3df23f3c18eb7d15e52c7701942002eb85784da 6.63kB / 6.63kB                0.0s
 => => sha256:5fb1b35a6fc14463ada297f3f0605409cbfe29368b38fd5d1e41f7dcf29bb6fb 64.40MB / 64.40MB             14.1s 
 => => sha256:2bb201f33898d2c0ce638505b426f4dd038cc00e5b2b4cbba17b069f0fff1496 6.41kB / 6.41kB                0.0s
 => => sha256:db3dba6026a3c551d6b8e98308c073fff4fd569fd2fc61f21384cb996da82c9e 24.03MB / 24.03MB              9.9s 
 => => sha256:d6ecbfb3e7f8ccd5b04dc161a13218fd7aade8b0235603a879606a4e6887da6a 211.45MB / 211.45MB           48.9s 
 => => sha256:209824f1020dd7356de5ba29da8ebdb51b2aba6156e65e988a4f1afaa5e0bc90 3.32kB / 3.32kB               14.9s 
 => => sha256:44589308cc55302277ca7c9ad227c640d9d505656330ad4b2d0e2259f32ac81c 58.24MB / 58.24MB             33.5s 
 => => sha256:62b1e7c1b2998f158b161ff1608a362205abc2a88f934a81f1c27fc482781723 1.25MB / 1.25MB               18.4s 
 => => extracting sha256:c6b11972fd12973831818babf60f1ffc1c4047507943d132dffc612884022858                     8.0s 
 => => sha256:2ef9d29408a87ac654c5a6ce36600717d04616f5188eaffe5dc6809803d885a7 445B / 445B                   18.9s 
 => => extracting sha256:db3dba6026a3c551d6b8e98308c073fff4fd569fd2fc61f21384cb996da82c9e                     2.1s 
 => => extracting sha256:5fb1b35a6fc14463ada297f3f0605409cbfe29368b38fd5d1e41f7dcf29bb6fb                     8.9s 
 => => extracting sha256:d6ecbfb3e7f8ccd5b04dc161a13218fd7aade8b0235603a879606a4e6887da6a                    25.0s 
 => => extracting sha256:209824f1020dd7356de5ba29da8ebdb51b2aba6156e65e988a4f1afaa5e0bc90                     0.0s 
 => => extracting sha256:44589308cc55302277ca7c9ad227c640d9d505656330ad4b2d0e2259f32ac81c                    12.2s 
 => => extracting sha256:62b1e7c1b2998f158b161ff1608a362205abc2a88f934a81f1c27fc482781723                     0.1s 
 => => extracting sha256:2ef9d29408a87ac654c5a6ce36600717d04616f5188eaffe5dc6809803d885a7                     0.0s 
 => [internal] load build context                                                                             0.1s 
 => => transferring context: 30.45kB                                                                          0.1s 
 => [2/5] WORKDIR /app                                                                                        0.6s 
 => [3/5] COPY package.json package-lock.json ./                                                              0.2s 
 => [4/5] COPY server.js ./                                                                                   0.2s 
 => [5/5] RUN npm install                                                                                     6.0s
 => exporting to image                                                                                        0.7s 
 => => exporting layers                                                                                       0.7s 
 => => writing image sha256:1867da8416bcb4a23fcce275db354094a98c446211f671fbfcdc23fa01029dbb                  0.0s 
 => => naming to docker.io/library/myapp:latest                                                               0.0s 
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ docker run -d -p 3000:3000 --name myapp myapp:latest
docker: permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Head "http://%2Fvar%2Frun%2Fdocker.sock/_ping": dial unix /var/run/docker.sock: connect: permission denied

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3000:3000 --name myapp myapp:latest      
0f22a2c22edc3a62d3ac20b19ac1af4919196796a8769bf6c1186847007c6b86
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo curl http://localhost:3000
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ /Userdocker run -d --name mydb -e MYSQL_ROOT_PASSWORD=root123 -v mysql_data:/var/lib/mysql mysqla:/var/lib/mysql mysql
Unable to find image 'mysql:latest' locally
latest: Pulling from library/mysql
806f49275cbf: Pull complete
872c71b4bef6: Pull complete
930d9dafee77: Pull complete
d9301ae294fe: Pull complete
1620875f220d: Pull complete
6457b1401253: Pull complete
4c8e7ce47d40: Pull complete
e522a8b4b86f: Pull complete
e81ddb8dbdb4: Pull complete
619a14803e82: Pull complete
Digest: sha256:91447968e66961302339ec4dc4d385f5e1a957d98e63c7d52ecf8b1de0907346
Status: Downloaded newer image for mysql:latest
a5cabc6423441bee31cc399a517e1b5889de9bf7799c4603ace2874ba7039614
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker stop mydb
mydb
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker rm mydb
mydb
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d --name mydb -e MYSQL_ROOT_PASSWORD=root123 -v mysql_data:/var/lib/mysql mysql
c1114bb55e97fce53c30c61cc60847aff6a92c08634cb3634d24b5404ea58223
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker exec -it mydb mysql -uroot -proot123
mysql: [Warning] Using a password on the command line interface can be insecure.
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 9.4.0 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE TABLE test_table (id INT);
ERROR 1046 (3D000): No database selected
mysql> select mydb
    -> CREATE TABLE test_table (id INT);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CREATE TABLE test_table (id INT)' at line 2
mysql> CREATE TABLE test_table (id INT);
ERROR 1046 (3D000): No database selected
mysql> select mydb
    -> CREATE TABLE test_table (id INT);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CREATE TABLE test_table (id INT)' at line 2
mysql> exit
Bye
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker stop mydb
mydb
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker rm mydb
mydb
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d --name mydb -e MYSQL_ROOT_PASSWORD=root123 -v mysql_data:/var/lib/mysql mysql
75c0f8d3c36c92e7a55dee09a7cb931e274ce70826149076468c20a984fccb08
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker exec -it mydb mysql -uroot -proot123
mysql: [Warning] Using a password on the command line interface can be insecure.
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 9.4.0 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW TABLES;
ERROR 1046 (3D000): No database selected
mysql> select mydb
    -> SHOW TABLES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SHOW TABLES' at line 2
mysql> exit
Bye
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3000:3000 -v $(pwd)/myapp:/app --name web myapp:latest
d02651b9e2ddef77e48c0ec233e70ce395e31ee29c4f79bf317332d0accfe682
docker: Error response from daemon: failed to set up container networking: driver failed programming external connectivity on endpoint web (035ab1b9166f67c899069b7dfeb0cc0a5cd0745ffb8af998ba962b9ff8dae6a6): Bind for 0.0.0.0:3000 failed: port is already allocated

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3000:3000 -v $(pwd)/myapp:/app --name web myapp:latest
docker: Error response from daemon: Conflict. The container name "/web" is already in use by container "d02651b9e2ddef77e48c0ec233e70ce395e31ee29c4f79bf317332d0accfe682". You have to remove (or rename) that container to be able to reuse that name.

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3010:3010 -v $(pwd)/myapp:/app --name web
 myapp:latest
docker: Error response from daemon: Conflict. The container name "/web" is already in use by container "d02651b9e2ddef77e48c0ec233e70ce395e31ee29c4f79bf317332d0accfe682". You have to remove (or rename) that container to be able to reuse that name.

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo sudo docker rm web
web
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3010:3010 -v $(pwd)/myapp:/app --name web myapp:latest
3996513f659dcd79cb84786e21ef7d2cbf52e82484ab180841ab5ea29b7a187f
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                      
                   NAMES
75c0f8d3c36c   mysql          "docker-entrypoint.s…"   3 minutes ago    Up 3 minutes    3306/tcp, 33060/tcp                           mydb
0f22a2c22edc   myapp:latest   "docker-entrypoint.s…"   10 minutes ago   Up 10 minutes   0.0.0.0:3000->3000/tcp, [::]:3000->3000/tcp   myapp
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker network create my_network
24439afadff1fda873a557b920158f0d0c3bde41a599e66fffcbe6825b138e28
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3000:3000 --name web --network my_network myapp:latest
docker: Error response from daemon: Conflict. The container name "/web" is already in use by container "3996513f659dcd79cb84786e21ef7d2cbf52e82484ab180841ab5ea29b7a187f". You have to remove (or rename) that container to be able to reuse that name.

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo sudo docker rm web
web
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ docker run -d -p 3000:3000 --name web --network my_network myapp:latest
docker: permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Head "http://%2Fvar%2Frun%2Fdocker.sock/_ping": dial unix /var/run/docker.sock: connect: permission denied

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3000:3000 --name web --network my_network myapp:latest
c749336f573b7b8c23ee892dea136a3b90a83ae3be6758381f71df72fba57508
docker: Error response from daemon: failed to set up container networking: driver failed programming external connectivity on endpoint web (a8602fdb733fe254abada1363891f3bc28913912cd55dc4efb73333f338d5b64): Bind for 0.0.0.0:3000 failed: port is already allocated

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo lsof -i :3000
COMMAND    PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
docker-pr 1484 root    7u  IPv4   6962      0t0  TCP *:3000 (LISTEN)
docker-pr 1490 root    7u  IPv6   6963      0t0  TCP *:3000 (LISTEN)
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo kill 1490
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo lsof -i :3000
COMMAND    PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
docker-pr 1484 root    7u  IPv4   6962      0t0  TCP *:3000 (LISTEN)
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3000:3000 --name web --network my_network myapp:latest
docker: Error response from daemon: Conflict. The container name "/web" is already in use by container "c749336f573b7b8c23ee892dea136a3b90a83ae3be6758381f71df72fba57508". You have to remove (or rename) that container to be able to reuse that name.

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo sudo docker rm web
web
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3000:3000 --name web --network my_network myapp:latest
2a399d14b62a8e362d86b1aa65d714f4985b677bf9d259e23a5f07678123a974
docker: Error response from daemon: failed to set up container networking: driver failed programming external connectivity on endpoint web (720df25539cc9cd57e4b7c5a0cef88f4d5f96e9c27b3d0e6fde1df0795ba72d7): Bind for 0.0.0.0:3000 failed: port is already allocated

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ docker run -d -p 3001:3000 --name web --network my_network myap
p:latest
docker: permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Head "http://%2Fvar%2Frun%2Fdocker.sock/_ping": dial unix /var/run/docker.sock: connect: permission denied

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3001:3000 --name web --network my_network
 myapp:latest
docker: Error response from daemon: Conflict. The container name "/web" is already in use by container "2a399d14b62a8e362d86b1aa65d714f4985b677bf9d259e23a5f07678123a974". You have to remove (or rename) that container to be able to reuse that name.

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo sudo docker rm web
web
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3001:3000 --name web --network my_network myapp:latest
c127d9d9fecc712276f67bb8887733e55c8f1aa156440817d577cec996cc0a75
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d --name db --network my_network -e MYSQL_ROOT_PASSWORD=root123 mysql
7f779ee85527c4c7cb5f35c815f7ae2f53afa83e7246803207057a702dcaf88f
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3001:3000 --name web --network my_network
 -e DB_HOST=db -e
flag needs an argument: 'e' in -e

Usage:  docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ docker run -d -p 3001:3000 --name web --network my_network -e D
B_HOST=db -e DB_USER=root -e DB_PASSWORD=root123 myapp:latest
docker: permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Head "http://%2Fvar%2Frun%2Fdocker.sock/_ping": dial unix /var/run/docker.sock: connect: permission denied

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ docker run -d -p 3001:3000 --name web --network my_network -e DB_HOST=db -e DB_USER=root -e DB_PASSWORD=root123 myapp:latest
docker: permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Head "http://%2Fvar%2Frun%2Fdocker.sock/_ping": dial unix /var/run/docker.sock: connect: permission denied

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker run -d -p 3001:3000 --name web --network my_network
 -e DB_HOST=db -e DB_USER=root -e DB_PASSWORD=root123 myapp:latest
docker: Error response from daemon: Conflict. The container name "/web" is already in use by container "c127d9d9fecc712276f67bb8887733e55c8f1aa156440817d577cec996cc0a75". You have to remove (or rename) that container to be able to reuse that name.

Run 'docker run --help' for more information
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ docker network ls
permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get "http://%2Fvar%2Frun%2Fdocker.sock/v1.48/networks": dial unix /var/run/docker.sock: connect: permission denied
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker network ls
NETWORK ID     NAME         DRIVER    SCOPE
b71140fb9349   bridge       bridge    local
0bf0919dd3c8   host         host      local
24439afadff1   my_network   bridge    local
abb892fe8229   none         null      local
khalill@DESKTOP-MKGUEFP:/mnt/c/Users/khalill/myapp$ sudo docker network inspect my_network
[
    {
        "Name": "my_network",
        "Id": "24439afadff1fda873a557b920158f0d0c3bde41a599e66fffcbe6825b138e28",
        "Created": "2025-10-17T10:38:28.357174779Z",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv4": true,
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.19.0.0/16",
                    "Gateway": "172.19.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "7f779ee85527c4c7cb5f35c815f7ae2f53afa83e7246803207057a702dcaf88f": {
                "Name": "db",
                "EndpointID": "d1eea851421302ceb47451d662a727f60c959d96baa2050e8c8a8e5ce1c4b443",
                "MacAddress": "06:50:43:c6:a8:eb",
                "IPv4Address": "172.19.0.3/16",
                "IPv6Address": ""
            },
            "c127d9d9fecc712276f67bb8887733e55c8f1aa156440817d577cec996cc0a75": {
                "Name": "web",
                "EndpointID": "13cf9702b00ff666a4608c02c7e6c4f401ec504e6fe3271d2a9316648f44cad4",
                "MacAddress": "aa:a7:a3:b3:48:a3",
                "IPv4Address": "172.19.0.2/16",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {}
    }
]