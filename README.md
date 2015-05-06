# docker-data-container

Docker data container for straightforward storage.

## Features

- [BusyBox](http://www.busybox.net/about.html)
- User `deploy`

        deploy:x:1000:1000::/data:

- Group `deploy`

        deploy:x:1000:

- Data storage folder `data`

        drwxr-xr-x   2 deploy deploy 4096 May  6 14:48 data

## Usage

Example `docker-compose.yml`:

``` yml
web:
  build: .
  volumes_from:
    - storage
  ports:
    - "80:80"
  expose:
    - "80"
  links:
    - storage
storage:
  image: ipioneers/docker-data-container
  command: true
  volumes:
    - /data
```

## Licence

Copyright © 2015 Interactive Pioneers GmbH. Licenced under [GPLv3](LICENSE).