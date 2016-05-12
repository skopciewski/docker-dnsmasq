## Usage

```bash
    docker create --name dnsmasq_data -v /my/dnsmasq_dir:/opt/dnsmasq busybox
    docker run -d --rm --name dnsmasq -p 53:53/udp --volumes-from dnsmasq_data skopciewski/dnsmasq
```

## Entrypoint

Redirects all params to the `dnsmasq` command. Workdir is `/opt/dnsmasq`.

### Default params

```bash
    -d -C dnsmasq.conf
```

### Escape to

If you want to execute other command than `dnsmasq`, run docker container with `escto` as first param:

```bash
    docker run -it --rm --name dnsmasq -p 52:52/udp --volumes-from dnsmasq_data skopciewski/dnsmasq escto sh
```

## Dependencies and requirements

* mount /opt/dnsamq with:
  * dnsmasq.conf - dnsmasq config file

