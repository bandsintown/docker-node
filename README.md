

## What is Node.js?

![logo](https://github.com/bandsintown-canada/docker-node/raw/latest/logo.png)


Node.js is a platform built on Chrome's JavaScript runtime for easily building
fast, scalable network applications. Node.js uses an event-driven, non-blocking
I/O model that makes it lightweight and efficient, perfect for data-intensive
real-time applications that run across distributed devices.

See: http://nodejs.org

## Usage

# How to use this image


To run a single script, you can mount it in a volume under `/app`. From
the root of your application directory (assuming your script is named
`hello.js`):

```
docker run -v ${PWD}:/app -w /app -it --rm bandsintown/node:6.7 node hello.js 
```

# Build

This project is configured as an [automated build in Dockerhub](https://hub.docker.com/r/bandsintown/alpine/).

Each branch give the related image tag.  

# License

All the code contained in this repository, unless explicitly stated, is
licensed under ISC license.

A copy of the license can be found inside the [LICENSE](LICENSE) file.

