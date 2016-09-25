## Usage

```bash
    docker run -d --rm --name dnsmasq -p 53:53/udp -v /my/dnsmasq_dir:/mnt/dnsmasq skopciewski/dnsmasq
```

## Entrypoint

Redirects all params to the `dnsmasq` command. Workdir is `/mnt/dnsmasq`.

### Default params

```bash
    -d -C dnsmasq.conf
```

### Escape to

If you want to execute other command than `dnsmasq`, run docker container with `escto` as first param:

```bash
    docker run -it --rm --name dnsmasq -p 52:52/udp -v /my/dnsmasq_dir:/mnt/dnsmasq skopciewski/dnsmasq escto sh
```

## Dependencies and requirements

* mount /mnt/dnsamq with:
  * dnsmasq.conf - dnsmasq config file
