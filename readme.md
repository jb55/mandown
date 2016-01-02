
# mandown

  Render markdown as a manpage

    $ mandown readme.md

  ![Example](http://jb55.com/s/mandown.png)

## Installation

  Install with make (requires pandoc)

    $ make install

  Install with nix

    $ nix-env -f https://github.com/jb55/mandown/archive/master.tar.gz -i

## Usage

  stdin

    $ rustc --explain E0412 | mandown

  on a file

    $ mandown readme.md

  html!?

    $ curl -s 'http://pandoc.org/getting-started.html' | mandown -f html
