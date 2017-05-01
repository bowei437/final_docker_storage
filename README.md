# Storage API

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

## How to Stop the Docker Container ##
Run the command `docker stop [id]`, where `[id]` is the generated id number of your container. If you do not know what your container id is, use the command `docker ps` to view all running containers.

## To configure host/ui address ##
1. To change the server's IP-address edit the **'host'** parameter in main.
    * `File: web/swagger_server/__main__.py`
        - `app.run(host='<your_address>', port=<port_number>)`
    
2. Change the host parameter in the **swagger.yaml** file for the UI to work
    * `web/swagger_server/server/swagger.yaml`
        - `host: "<your_address>:<port_number>"`

## Changing the port number ##
1. Change the *<port_number>* in the same files for configuring the host/ui address
2. Go into the base directory /docker_pathfind and edit the **docker-compose.yml**
    * `ports: ` 
        `- "<port_number>:<port_number>"`
3. Change the **Dockerfile** (i.e. change the EXPOSE #)
    * `#Expose port # for testing`
    -`    EXPOSE <port_number>`
    
