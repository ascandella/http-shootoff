#!/usr/bin/env iojs
var http = require('http');

http.createServer(function (request, response) {
    response.end('hello');
}).listen(8080, '127.0.0.1');
