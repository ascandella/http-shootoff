#!/usr/bin/env python

import tornado.web
import tornado.ioloop


class MainHandler(tornado.web.RequestHandler):
    def get(self):
        self.write("hello")


application = tornado.web.Application([
    (r"/simple", MainHandler)
])


if __name__ == '__main__':
    application.listen(8080)
    tornado.ioloop.IOLoop.instance().start()
