concurrency := 10
num := 10000
port := 8080

bench:
	ab -c $(concurrency) -n $(num) http://127.0.0.1:$(port)/simple

go:
	go build server.go
	./server

env:
	virtualenv $@

flask-gunicorn: env
	./env/bin/pip install flask gunicorn
	./env/bin/gunicorn -w 4 f:app -b '127.0.0.1:$(port)'

flask-uwsgi: env
	./env/bin/pip install flask uwsgi
	./env/bin/uwsgi --http '127.0.0.1:$(port)' --virtualenv ./env --master --processes 4 -w f:app

warp:
	cd warp; cabal sandbox init && cabal install --only-dependencies && cabal build
	./warp/dist/build/http-shootoff-warp/http-shootoff-warp $(port)

bash:
	cp bashttpd.conf bashttpd/
	socat TCP4-LISTEN:$(port),fork EXEC:./bashttpd/bashttpd

immutant:
	cd immutant && lein uberjar
	java -jar ./immutant/target/shootoff-0.1.0-standalone.jar $(port)

.PHONY: bench go flask-gunicorn flask-uwsgi warp bash immutant
