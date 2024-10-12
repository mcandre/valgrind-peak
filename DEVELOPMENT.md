# BUILDTIME REQUIREMENTS

* GNU [awk](https://www.gnu.org/software/gawk/) 5+
* GNU or BSD [findutils](https://en.wikipedia.org/wiki/Find_(Unix))
* [git](https://git-scm.com/) 2.46.1+
* POSIX compatible [grep](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/grep.html)
* POSIX compatible [sh](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/sh.html)
* [Go](https://go.dev/) 1.23.2+
* [Python](https://www.python.org/) 3.12.1+
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)
* [Snyk](https://snyk.io/)
* [Valgrind](https://valgrind.org/) 3.22+
* Provision additional dev tools with `./install`

## Recommended

* [ASDF](https://asdf-vm.com/) 0.10 (run `asdf reshim` after provisioning)
* [direnv](https://direnv.net/) 2
* [Docker](https://www.docker.com/) 27+
* [Linux](https://www.linux.org/) environments, particularly glibc implementations

# INSTALL

(Adjust git forks, clone URLs, remotes, HEAD pointer, and/or local directory name as needed.)

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


# AUDIT

```console
$ ./build audit
```

# LINT

```console
$ ./build lint
```

# BUILD DOCKER IMAGE

```console
$ ./build docker_build
```

# TEST

```console
$ ./build [test]
```

# PUBLISH

```console
$ ./build docker_publish
```
