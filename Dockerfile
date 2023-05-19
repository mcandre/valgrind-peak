FROM debian:bullseye
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y \
        gawk \
        valgrind
COPY . .
ENTRYPOINT ["/bin/valgrind-peak"]
