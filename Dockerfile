FROM golang
ADD . /go/src/github.com/TrustedKeep/etcd
ADD cmd/vendor /go/src/github.com/TrustedKeep/etcd/vendor
RUN go install github.com/TrustedKeep/etcd
EXPOSE 2379 2380
ENTRYPOINT ["etcd"]
