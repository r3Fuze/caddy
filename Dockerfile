FROM caddy:2.11.6-builder-alpine AS builder
RUN xcaddy build \
    --with github.com/lucaslorentz/caddy-docker-proxy/v2@v2.13.1 \
    --with github.com/caddy-dns/cloudflare@v0.2.4 \
    --with github.com/sablierapp/sablier-caddy-plugin@v1.0.2

FROM caddy:2.11.7-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
CMD ["caddy", "docker-proxy"]