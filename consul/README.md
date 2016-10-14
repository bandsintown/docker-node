# Consul Node image

This image inherits from the ```bandsintown/node``` image adding support to manage configuration through [Consul](https://consul.io/)

It includes : 
  - [S6 Overlay](https://github.com/just-containers/s6-overlay) to properly manage multiple services in one container
  - [Consul template](https://github.com/hashicorp/consul-template) to manage dynamic configuration based on Consul

# Usage

## Consul Template

The following example mount the [Consul template](https://github.com/hashicorp/consul-template) configuration in the container: 

```
docker run --name node-consul -v etc/consul-template:/etc/consul-template:ro -d bandsintown/node:consul

```

or you can create your own ```Dockerfile```:

```
FROM bandsintown/node:consul

ADD etc/consul-template /etc/consul-template
```

# Build

This project is configured as an [automated build in Dockerhub](https://hub.docker.com/r/bandsintown/node/). 

A ```consul``` version is available for each Node version supported.