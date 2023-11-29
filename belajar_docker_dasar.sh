
# see image in docker
docker image ls

# download image
docker image pull nameimage:tag

# delete image
docker image rm nameimage:tag

# see docker container
docker container ls -a

# see running docker container
docker container ls

# create container
docker container create --name namecontainer nameimage:tag

# run container
docker container start namecontainer

# stop container
docker container stop namecontainer

# delete container
docker container rm namecontainer

# log
docker container logs namecontainer

# log realtime
docker container logs -f name container

# container exec
docker container exec -i -t containername bin/bash

# container port
docker container create --name namecontainer --publish hostport:containerport imagename:tag

# env
docker container create --name namecontainer --publish host:chost [--env key=value...] imagename:tag

# container stats
docker container stats

# container resource limit
docker container create --name namecontainer --memory=vb/k/m/g --cpus=decimal

# docker mount
docker container create --name namecontainer --mount="type=(mount, bind, volume),source=path/to/file,destination=path/to/file,readonly" image:tag

# volume
docker volume ls

# create volume
docker volume create namevolume

# delete volume
docker volume rm namevolume

# use volume
docker container create --name namecontainer --mount="type=volume,source=namevolume,destination=path/to/file" image:tag

# backup volume manual
docker container create --name namecontainer --mount=host --mount=volume image:tag

# backup with run
docker container run --rm --name namecontainer --mount=host --mount=volume image:tag tar cvf /path/to/file.tar.gz /path

# restore
docker container run --rm --name namecontainer --mount=host --mount=volume image:tag tar bash -c "cd /data && tar xvf /backup/backup.tar.gz"

# network
docker network ls

# create network
docker network create --driver namedriver namenetwork

# remove network
docker network rm namenetwork

# container with network from scratch
docker container create --name name --network name image:tag

# remove container from network
docker network disconnect namenetwork namecontainer

# add netowrk if container already exists
docker network connect namenetwork namecontainer

# inspect
docker image inspect image:tag
docker container inspect namecontainer
docker volume inspect namevolume
docker network inspect networkname

# automaticly clean
docker systems prune -> image, container, network, volume