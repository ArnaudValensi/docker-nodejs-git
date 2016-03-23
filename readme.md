```
$ mkdir /srv/node-data
$ mkdir /srv/node-data/keys
```

Place your public ssh key in `/srv/node-data/keys`

Then:
```
docker run -d \
       -v /srv/node-data:/srv \
       -p 11000:8080 \
       --name parse arnaudvalensi/docker-nodejs-git
```
