
# NAME

  mandown - render markdown as a manpage

# SYNOPSIS

  **mandown** [`-f <format>`] [file.md]

# DESCRIPTION

  **mandown** uses **pandoc** to convert document formats to man, and then
  uses **man** to display that document.

# OPTIONS

-f format
  ~ Chooses the source document format. defaults to **markdown**.

# EXAMPLES

  stdin

    $ rustc --explain E0412 | mandown

  on a file

    $ mandown readme.md

  html!?

    $ curl -s 'http://pandoc.org/getting-started.html' | mandown -f html


