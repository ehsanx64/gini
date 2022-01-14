FROM golang:1.17-alpine as base
FROM base as dev
RUN apk add make curl
RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin
WORKDIR /opt/gini
CMD ["air"]
