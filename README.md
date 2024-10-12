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
* [git](https://git-scm.com/) 2.46.1+
* POSIX compatible [sh](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html)
* [Valgrind](https://valgrind.org/) 3.22+

## Recommended

* [Docker](https://www.docker.com/) 27+
* [Linux](https://www.linux.org/) environments, particularly glibc implementations

# INSTALL

1. Clone the project to a local directory.

```console
$ git clone https://github.com/mcandre/valgrind-peak.git ~/valgrind-peak
```

2. Add .../valgrind-peak/bin to `PATH`.

~/.zshrc:

```zsh
# ...
export PATH="$PATH:$HOME/valgrind-peak/bin"
```

# UNINSTALL

1. Remove .../valgrind-peak/bin from `PATH`.

~/.zshrc:

```zsh
# ...
```

2. Remove local clone directory.

```console
$ rm -rf ~/valgrind-peak
```


# CONTRIBUTING

For more information on developing valgrind-peak itself, see [DEVELOPMENT.md](DEVELOPMENT.md).

# SEE ALSO

* BSD [/usr/bin/time](https://man.freebsd.org/cgi/man.cgi?query=time)
* Windows [Task Manager](https://learn.microsoft.com/en-us/shows/inside/task-manager)
