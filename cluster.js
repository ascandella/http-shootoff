#!/usr/bin/env node
var cluster = require('cluster');
var http = require('http');

if (cluster.isMaster) {
    for (var i = 0; i < require('os').cpus().length/2; i++) {
        cluster.fork();
    }
} else {
    http.createServer(function onRequest(req, res) {
        res.end('hello');
    }).listen(8080);
}
