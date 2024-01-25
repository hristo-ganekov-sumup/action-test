FROM golang:latest as builder
WORKDIR /action-test
COPY . .
RUN CGO_ENABLED=0 go build
FROM gcr.io/distroless/static AS final
COPY --from=builder /action-test/action-test /bin/action-test
ENTRYPOINT ["/bin/action-test"]
