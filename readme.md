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

flask+gunicorn
--------------

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

