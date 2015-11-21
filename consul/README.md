# Consul Node image

This image inherits from the ```1science/node``` image adding support to manage configuration through [Consul](https://consul.io/)

It includes : 
  - [S6 Overlay](https://github.com/just-containers/s6-overlay) to properly manage multiple services in one container
  - [Consul template](https://github.com/hashicorp/consul-template) to manage dynamic configuration based on Consul
  - [Fileconsul](https://github.com/foostan/fileconsul) an utility to synchronize files on Consul

# Usage

## Consul Template

The following example mount the [Consul template](https://github.com/hashicorp/consul-template) configuration in the container: 

```
docker run --name node-consul -v etc/consul-template:/etc/consul-template:ro -d 1science/node:consul

```

or you can create your own ```Dockerfile```:

```
FROM 1science/node:consul

ADD etc/consul-template /etc/consul-template
```

## Fileconsul

The following example use [Fileconsul](https://github.com/foostan/fileconsul) to synchronize configuration files with Consul: 

```
docker run --name node-consul \ 
-e CONSUL_URL=localhost:8500 \
-e FILECONSUL_PREFIX=app \
-e FILECONSUL_DC=local \
-e FILECONSUL_BASEPATH=/app/etc \
-d 1science/node:consul
```

This synchronize the configuration files in Consul defined in the KV folder ```app``` in the local directory ```/app/etc``` (see [fileconsul script](etc/periodic/1min/fileconsul)).

The Node process is in charge to detect the changes made in the ```/app/etc``` directory and [reload](http://stackoverflow.com/questions/1972242/auto-reload-of-files-in-node-js) the configuration.

# Build

This project is configured as an [automated build in Dockerhub](https://hub.docker.com/r/1science/node/). 

A ```consul``` version is available for each Node version supported.