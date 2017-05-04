# Storage API
This is the docker form of the Storage Server for Team 4. It is used as a standalone and for isolated testing. For the primary implementation, click [here](https://github.com/ldev-r3-t4/storage_server) or see below.

## How to Generate the Docker container and run Locally ##
1. go ahead and gitclone this repo
`git clone https://github.com/bowei437/final_docker_storage.git`
2. Run **git checkout local**
3. Navigate into the web directory (i.e. cd web)
4. run docker commands to get server running - may have to **sudo**
    * `docker-compose build`
    * `docker-compose -f docker-compose.yml up`
5. Access your machine-ip address (docker-machine ip) in your web browser
    * `The UI should be viewable at **192.168.99.100/v2/ui**`
6.  If you cannot access the UI then change the **'host'** address in the **swagger.yaml** file
    * **To get Machine ip address:** `Run docker-machine ip` 
    * **Update swagger.yaml:** `host: "<Machine Ip-Address>"`
    * Repeat steps 4 and 5

## Main Storage Implementation
The primary storage server that is used by the project is located at the link below
https://github.com/ldev-r3-t4/storage_server
