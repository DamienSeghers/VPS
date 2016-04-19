#!/bin/bash

docker run -ti --name apache -p 80:80 \
 --volume /home/noisyboy1609/apache/etc:/etc/apache2 \
 --volume /home/noisyboy1609/apache/www:/var/www \
 --volume /home/noisyboy1609/apache/log:/var/log/apache2 \
 eboraas/apache-php
