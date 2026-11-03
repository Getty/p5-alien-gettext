# Alien::gettext

Find or build the GNU gettext command-line tools.

## Synopsis

```perl
use Alien::gettext;
use Env qw( @PATH );

unshift @PATH, Alien::gettext->bin_dir;
```

## Description

`Alien::gettext` provides the [GNU gettext](https://www.gnu.org/software/gettext/)
command-line utilities to Perl via [Alien::Base](https://metacpan.org/pod/Alien::Base).
It uses the system gettext when one is installed, and otherwise downloads the newest
source release from `https://ftp.gnu.org/gnu/gettext/` and builds it.

The tool set is `msgfmt`, `msgfilter`, `msgcmp`, `msgcomm`, `msgmerge`, `xgettext`,
`msgexec`, `msguniq`, `msginit`, `msgunfmt` and `msgconv`. There is no library to link:
no `cflags`, no `libs`, no XS. Consumers run the tools as external commands.

## Usage

Put the tools on `PATH` with `bin_dir`, then run them:

```perl
use Alien::gettext;
use Env qw( @PATH );

unshift @PATH, Alien::gettext->bin_dir;

system 'msgfmt', '--version';
system 'xgettext', '--version';
```

On a system install `bin_dir` is empty, because the tools are already on `PATH`; on a
share install it is the `bin/` directory of the built copy. The module inherits all
other methods from `Alien::Base`.

## Installation

```bash
cpanm Alien::gettext
```

The share build needs network access to `ftp.gnu.org`. To force one of the two install
paths:

```bash
env ALIEN_INSTALL_TYPE=share  cpanm Alien::gettext
env ALIEN_INSTALL_TYPE=system cpanm Alien::gettext
```

## License

This software is copyright (c) 2026 by Torsten Raudssus <torsten@raudssus.de>.

This is free software; you can redistribute it and/or modify it under the same terms as
the Perl 5 programming language system itself.
