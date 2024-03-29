FROM traefik:1.7.12-alpine

COPY config.sh /config.sh
COPY traefik.toml /etc/traefik/traefik.toml

EXPOSE 8080
EXPOSE 80

ENTRYPOINT ["/config.sh"]
CMD ["/entrypoint.sh"]
