#include <assert.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include <event2/buffer.h>
#include <event2/event.h>
#include <event2/http.h>
#include <event2/util.h>


class StaticResponse {
public:
  StaticResponse() = delete;
  StaticResponse(const char *response) {
    assert((buf_ = evbuffer_new()) != nullptr);
    evbuffer_add(buf_, response, strlen(response));
  }
  ~StaticResponse() { evbuffer_free(buf_); }
  inline evbuffer* buf() const { return buf_; }

private:
  struct evbuffer *buf_;
};


static void doit(struct evhttp_request *req, void *arg) {
  StaticResponse *resp = reinterpret_cast<StaticResponse*>(arg);
  evhttp_send_reply(req, 200, "OK", resp->buf());
}


struct args {
  int fd;
  const char *response;
};


static void* thread_worker(void *arg) {
  struct args *args = (struct args*) arg;

  struct event_base *base = event_base_new();
  struct evhttp *evh = evhttp_new(base);
  evhttp_accept_socket(evh, args->fd);

  StaticResponse response(args->response);
  evhttp_set_gencb(evh, doit, (void *) &response);
  event_base_dispatch(base);
}

int main(int argc, char **argv) {
  int c;
  int concurrency = 10;
  int port = 8080;
  while ((c = getopt(argc, argv, "p:c:")) != -1) {
    switch (c) {
    case 'c':
      concurrency = atoi(optarg);
      break;
    case 'p':
      port = atoi(optarg);
      break;
    default:
      abort();
    }
  }
  if (concurrency < 1) {
    concurrency = 1;
  }

  int sock = socket(AF_INET, SOCK_STREAM, 0);
  if (sock < 0) {
    perror("socket");
    return 1;
  }

  const int optval = 1;
  if (setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval)) < 0) {
    perror("setsockopt()");
  }

  struct sockaddr_in bind_addr;
  memset(&bind_addr, 0, sizeof(bind_addr));
  bind_addr.sin_family = AF_INET;
  bind_addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
  bind_addr.sin_port = htons(port);
  if (bind(sock, (struct sockaddr *) &bind_addr, sizeof(bind_addr)) < 0) {
    perror("bind()");
    return 1;
  }
  if (listen(sock, 128) < 0) {
    perror("listen()");
    return 1;
  }
  evutil_make_socket_nonblocking(sock);

  struct args args{sock, "hello"};
  pthread_attr_t attr;
  pthread_attr_init(&attr);
  pthread_t thread;
  for (int i = 0; i < concurrency; i++) {
    int s = pthread_create(&thread, &attr, thread_worker, &args);
    if (s != 0) {
      perror("pthread_create()");
      return 1;
    }
  }
  pthread_join(thread, nullptr);
}
