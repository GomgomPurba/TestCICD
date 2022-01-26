FROM golang:latest

WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...
RUN go build
HEALTHCHECK --interval=5s --timeout=3s \
    CMD curl -f http://localhost:8000/ || exit 1

CMD ["test"]
