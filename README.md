# valgrind-peak: query process peak memory usage via valgrind massif

# EXAMPLE

```console
$ valgrind-peak echo hello
hello
7400
```

The output unit implicitly matches massif units (bytes).

# LICENSE

BSD-2-Clause

# RUNTIME REQUIREMENTS

* GNU [awk](https://www.gnu.org/software/gawk/) 5+
* POSIX compatible [sh](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html)
* [Valgrind](https://valgrind.org/) 3.22+

## Recommended

* [Docker](https://www.docker.com/) 27+
* [Linux](https://www.linux.org/) environments, particularly glibc implementations

# INSTALL

For more information on installing or uninstalling valgrind-peak, see [INSTALL.md](INSTALL.md).

# CONTRIBUTING

For more information on developing valgrind-peak itself, see [DEVELOPMENT.md](DEVELOPMENT.md).

# SEE ALSO

* BSD [/usr/bin/time](https://man.freebsd.org/cgi/man.cgi?query=time)
* Windows [Task Manager](https://learn.microsoft.com/en-us/shows/inside/task-manager)
