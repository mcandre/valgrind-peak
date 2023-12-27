FROM fedora:39
RUN yum -y install \
        gawk \
        valgrind
COPY /bin/valgrind-peak /bin
ENTRYPOINT ["/bin/valgrind-peak"]
