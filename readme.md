
# mdman

  Render markdown as a manpage

## Installation

  Install with make (requires pandoc)

    $ make install

  Install with nix

    $ nix-env -f . -i

## Usage

  stdin

    $ rustc --explain E0412 | mdman

  on a file

    $ mdman readme.md
