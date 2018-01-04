
# mandown

  Render anything (supported by pandoc) as a manpage

    $ mandown readme.md

  ![Example](http://jb55.com/s/mandown.png)

## Examples

    $ curl -sL 'website' | mandown html

    $ mandown bip176.mediawiki

## Installation

  Install with make (requires pandoc)

    $ make install

  Install with nix

    $ nix-env -f https://jb55.com/pkgs -iA mandown

## Usage

  See [the docs](doc/man.md)

  Also available at `man mandown` after installation 
