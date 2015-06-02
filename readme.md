go
--

    Concurrency Level:      10
    Time taken for tests:   0.546 seconds
    Complete requests:      10000
    Failed requests:        0
    Write errors:           0
    Total transferred:      1210000 bytes
    HTML transferred:       50000 bytes
    Requests per second:    18303.85 [#/sec] (mean)
    Time per request:       0.546 [ms] (mean)
    Time per request:       0.055 [ms] (mean, across all concurrent requests)
    Transfer rate:          2162.86 [Kbytes/sec] received

node
----

    Concurrency Level:      10
    Time taken for tests:   1.353 seconds
    Complete requests:      10000
    Failed requests:        0
    Write errors:           0
    Total transferred:      800000 bytes
    HTML transferred:       50000 bytes
    Requests per second:    7389.45 [#/sec] (mean)
    Time per request:       1.353 [ms] (mean)
    Time per request:       0.135 [ms] (mean, across all concurrent requests)
    Transfer rate:          577.30 [Kbytes/sec] received

tornado
-------

    Concurrency Level:      10
    Time taken for tests:   6.620 seconds
    Complete requests:      10000
    Failed requests:        0
    Write errors:           0
    Total transferred:      1990000 bytes
    HTML transferred:       50000 bytes
    Requests per second:    1510.56 [#/sec] (mean)
    Time per request:       6.620 [ms] (mean)
    Time per request:       0.662 [ms] (mean, across all concurrent requests)
    Transfer rate:          293.56 [Kbytes/sec] received

flask+gunicorn (4 workers)
-------------------------

    Concurrency Level:      10
    Time taken for tests:   1.565 seconds
    Complete requests:      10000
    Failed requests:        0
    Write errors:           0
    Total transferred:      1640000 bytes
    HTML transferred:       50000 bytes
    Requests per second:    6389.29 [#/sec] (mean)
    Time per request:       1.565 [ms] (mean)
    Time per request:       0.157 [ms] (mean, across all concurrent requests)
    Transfer rate:          1023.28 [Kbytes/sec] received


flask+gunicorn (1 worker)
-------------------------

    Concurrency Level:      10
    Time taken for tests:   5.370 seconds
    Complete requests:      10000
    Failed requests:        0
    Write errors:           0
    Total transferred:      1640000 bytes
    HTML transferred:       50000 bytes
    Requests per second:    1862.09 [#/sec] (mean)
    Time per request:       5.370 [ms] (mean)
    Time per request:       0.537 [ms] (mean, across all concurrent requests)
    Transfer rate:          298.23 [Kbytes/sec] received


flask+uwsgi (4 workers)
----------------------

    Concurrency Level:      10
    Time taken for tests:   0.746 seconds
    Complete requests:      10000
    Failed requests:        0
    Write errors:           0
    Total transferred:      830000 bytes
    HTML transferred:       50000 bytes
    Requests per second:    13397.50 [#/sec] (mean)
    Time per request:       0.746 [ms] (mean)
    Time per request:       0.075 [ms] (mean, across all concurrent requests)
    Transfer rate:          1085.93 [Kbytes/sec] received


flask+uwsgi (1 worker)
----------------------

    Concurrency Level:      10
    Time taken for tests:   2.911 seconds
    Complete requests:      10000
    Failed requests:        0
    Write errors:           0
    Total transferred:      830000 bytes
    HTML transferred:       50000 bytes
    Requests per second:    3435.76 [#/sec] (mean)
    Time per request:       2.911 [ms] (mean)
    Time per request:       0.291 [ms] (mean, across all concurrent requests)
    Transfer rate:          278.48 [Kbytes/sec] received


webmachine
----------

    Concurrency Level:      10
    Time taken for tests:   0.670 seconds
    Complete requests:      10000
    Failed requests:        0
    Write errors:           0
    Total transferred:      1620000 bytes
    HTML transferred:       50000 bytes
    Requests per second:    14928.11 [#/sec] (mean)
    Time per request:       0.670 [ms] (mean)
    Time per request:       0.067 [ms] (mean, across all concurrent requests)
    Transfer rate:          2361.67 [Kbytes/sec] received


mochiweb
--------

    Concurrency Level:      10
    Time taken for tests:   0.471 seconds
    Complete requests:      10000
    Failed requests:        0
    Write errors:           0
    Total transferred:      1810000 bytes
    HTML transferred:       60000 bytes
    Requests per second:    21222.55 [#/sec] (mean)
    Time per request:       0.471 [ms] (mean)
    Time per request:       0.047 [ms] (mean, across all concurrent requests)
    Transfer rate:          3751.25 [Kbytes/sec] received

warp (haskell)
--------------

    Concurrency Level:      10
    Time taken for tests:   0.456 seconds
    Complete requests:      10000
    Failed requests:        0
    Write errors:           0
    Total transferred:      840000 bytes
    HTML transferred:       50000 bytes
    Requests per second:    21944.84 [#/sec] (mean)
    Time per request:       0.456 [ms] (mean)
    Time per request:       0.046 [ms] (mean, across all concurrent requests)
    Transfer rate:          1800.16 [Kbytes/sec] received

