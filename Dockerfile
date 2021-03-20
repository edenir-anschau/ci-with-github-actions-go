FROM golang:alpine3.13 as builder

WORKDIR /go/src

COPY ./hello.go .
RUN go build hello.go

FROM scratch
COPY --from=builder /go/src/hello .
CMD ["./hello"]