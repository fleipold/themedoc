% themedoc
% theming pandoc



# Getting started

## Installation

    gem install themedoc

## Usage

To `use themedoc's` default theme use the following incantation to
create a pdf:

    themedoc --theme default myfile.md

A theme is a directory that lives in `~/.themedoc`. To get
started on your own theme quickly copy the default theme:

    cp -R ~/.themedoc/default ~/.themedoc/mytheme

To get help around theme specific parameters go like this:

    themedoc --theme default --help

# Features

* Support different themes for pandoc
* Theme consists of
    + command line options for pandoc
    + template variables for pandoc
    + a snippet inclusion mechanism
    + bundled resources
* Parameterisation via the command line


# Philosophy

Pandoc is a very powerful and flexible text conversion tool.
One of its primary usecases is to render pandoc markdown into
various formats, such as pdf and different flavours of html.
The output can be customised in various ways:

1. Setting *command line options*
2. Setting so-called *template variable* using command line arguments
3. *Including custom files* at verious places in the generated output
   with filenames also passed in using the command line
4. Changing the templates that are used to generate the output

I generally stay away from option 4, because it is very intrusive and
might easily break the compatibility with future versions.

The first three options provide a lot of flexibility, however
it is a hassle to set them all via the command line. This is
where `themedoc` enters the stage.

In themedoc a theme is a combination of command line options and
template variables as well as snippets for the target file
conveniently bundled into a yaml file. Also it allows to bundle other
resources into the theme and takes care of making them available
through the command line.

# Release Notes

## Release 0.2

* If no theme is given themedoc now defaults to `default-html`
* Doesn't depend on the extension of the input file (no more than `pandoc`)
* `default` theme now uses pdf-latex
* Added `default`
* Writes a message to stdout that states output file
* `--list-themes` lists the themes available
* Now we also support snippets to be inserted before and after the body

# TODO

* Streaming from stdin ??
* Should see why it doesn't run rb 1.8
   * Testing needed
* propagate exit code
    - don't forget cleanup
    - propagate pandocs stderr
* implement `--version`
* Make `--list-themes` more robust by checking for files to be directories











