# caddy

Caddy with [`caddy-docker-proxy`](https://github.com/lucaslorentz/caddy-docker-proxy) and
[`caddy-dns/cloudflare`](https://github.com/caddy-dns/cloudflare), rebuilt on every Caddy release.

```sh
docker pull ghcr.io/r3fuze/caddy:latest
```

Built for my own use — the plugin set may change without notice, and version tags are
re-pushed when it does. If you depend on this image, use an immutable `sha-<commit>` tag,
pin a digest (`ghcr.io/r3fuze/caddy@sha256:…`), or fork the repo.

| Tag | Example | Mutable |
| --- | --- | --- |
| Caddy version | `2.11.4` | yes, re-pushed on every build |
| `latest` | `latest` | yes |
| Commit | `sha-1a2b3c4` | no |
