# INSTALLTION REQUIREMENTS

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
$ git clone https://github.com/mcandre/valgrind-peak.git "$HOME/valgrind-peak"
```

2. Add .../valgrind-peak/bin to `PATH`.

For example, `$HOME/.zshrc` (zsh):

```sh
# ...
export PATH="$PATH:$HOME/valgrind-peak/bin"
```

# UNINSTALL

1. Remove .../valgrind-peak/bin from `PATH`.

For example, `$HOME/.zshrc` (zsh):

```sh
# ...
```

2. Remove local clone directory.

```console
$ rm -rf "$HOME/valgrind-peak"
```
