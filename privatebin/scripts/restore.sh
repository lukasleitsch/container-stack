#!/bin/bash

docker run --rm -v privatebin_privatebin-data:/data -v /docker/privatebin/backup/:/backup ubuntu bash -c "cd /data && tar xvf /backup/data.tar"