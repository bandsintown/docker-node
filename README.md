[![dockeri.co](http://dockeri.co/image/bandsintown/node)](https://hub.docker.com/r/bandsintown/node/)

[![Build status](https://badge.buildkite.com/f78e045c0b561ba33f80f3c996ccfe89b49ade24b832f92bfd.svg)](https://buildkite.com/bandsintown/docker-node)
[![GitHub issues](https://img.shields.io/github/issues/bandsintown/docker-node.svg "GitHub issues")](https://github.com/bandsintown/docker-node)
[![GitHub stars](https://img.shields.io/github/stars/bandsintown/docker-node.svg "GitHub stars")](https://github.com/bandsintown/docker-node)
[![Docker layers](https://images.microbadger.com/badges/image/bandsintown/node.svg)](http://microbadger.com/images/bandsintown/node)
	
# What is Node.js?

![logo](https://github.com/bandsintown/docker-node/raw/master/logo.png)


Node.js is a platform built on Chrome's JavaScript runtime for easily building
fast, scalable network applications. Node.js uses an event-driven, non-blocking
I/O model that makes it lightweight and efficient, perfect for data-intensive
real-time applications that run across distributed devices.

See: http://nodejs.org

# Usage

## How to use this image


To run a single script, you can mount it in a volume under `/app`. From
the root of your application directory (assuming your script is named
`hello.js`):

```
docker run -v ${PWD}:/app -w /app -it --rm bandsintown/node node hello.js 
```

# License

All the code contained in this repository, unless explicitly stated, is
licensed under ISC license.

A copy of the license can be found inside the [LICENSE](LICENSE) file.

