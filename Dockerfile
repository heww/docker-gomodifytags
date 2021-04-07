FROM golang:alpine

RUN apk --no-cache add ca-certificates shared-mime-info mailcap git build-base && \
  go install github.com/fatih/gomodifytags@v1.13.0

ENTRYPOINT ["gomodifytags"]
CMD ["--help"]