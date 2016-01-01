
# mdman

  Render markdown as a manpage

    $ mdman readme.md

  ![Example](http://jb55.com/s/mdman.png)

## Installation

  Install with make (requires pandoc)

    $ make install

  Install with nix

    $ nix-env -f https://github.com/jb55/mdman/archive/master.tar.gz -i

## Usage

  stdin

    $ rustc --explain E0412 | mdman

  on a file

    $ mdman readme.md
