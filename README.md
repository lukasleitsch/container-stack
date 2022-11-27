# My Container Stack

In this repo I collect my docker-compose files.


## Setup

Enable IPv6 for the docker daemon `/etc/docker/daemon.json`:

```json
{
    "ipv6": true,
    "fixed-cidr-v6": "fd00:dead:beef::/48",
    "ip6tables": true,
    "experimental": true,
}
```

Restart your host to apply the changes.

Create a new external network before starting the ngin-proxy container:

```bash
docker network create --ipv6 --subnet fd00:0:0:1::/64 --gateway fd00:0:0:1::1 nginx-proxy
```
