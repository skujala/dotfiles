Dotfiles
========
This repository includes all of my custom dotfiles. The included setup script
creates symlinks from your home directory to the `dot_`-prefixed files which
are located in the directory where you cloned the repository.

The setup script `install.sh` backs up your existing dotfiles into
`~/.dotfiles_backup_*/` directory if you have any pre-existing dotfiles of the same name as
the dotfile symlinks being created in your home directory.

Installation
------------

``` bash
mkdir ${SOMEDIRECTORY}
git clone git://github.com/skujala/dotfiles ${SOMEDIRECTORY}
cd ${SOMEDIRECTORY}
./install.sh
```
