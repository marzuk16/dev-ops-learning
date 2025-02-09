FROM alpine:latest

RUN apk add --no-cache curl jq

WORKDIR /app

COPY fetch_commits.sh .

RUN chmod +x fetch_commits.sh

CMD ["./fetch_commits.sh"]
