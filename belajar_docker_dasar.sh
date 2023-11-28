
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
