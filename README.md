## What is Node.js?

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
docker run -v ${PWD}:/app -w /app -it --rm 1science/node:4.2.2 node hello.js 
```

