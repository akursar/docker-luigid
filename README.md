# Minimal docker image for running [Luigi](http://luigi.readthedocs.org/en/latest/index.html)

- Built on [baseimage-docker](http://phusion.github.io/baseimage-docker/)

To run, publish luigi's default web port ( 8082 )

    docker run -d -p 8082:8082 akursar/luigid

And visit http://LUIGI_HOST:8082/

Configure your luigi clients to point to this schedule by adding this to your /etc/luigi/client.cfg

    [core]
    default-scheduler-host: LUIGI_HOST
    default-scheduler-port: 8082
