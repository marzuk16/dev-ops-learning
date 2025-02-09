FROM alpine:latest

RUN apk add --no-cache curl jq

WORKDIR /app

COPY fetch_commits.sh .

RUN chmod +x fetch_commits.sh

# Alpine linux doesn't use GNU Bash, that's why can't use `CMD ["./fetch_commits.sh"]`,
# Install the `bash` using `RUN` command if want to use this.  

CMD ["sh", "fetch_commits.sh"]
