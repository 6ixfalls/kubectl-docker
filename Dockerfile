FROM alpine:3.22

COPY --from=registry.k8s.io/kubectl:v1.34.1 /bin/kubectl /usr/local/bin/kubectl

USER nobody
ENTRYPOINT ["/usr/local/bin/kubectl"]
