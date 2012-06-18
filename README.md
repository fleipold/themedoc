% themedoc
% theming pandoc

# Features

* Support different themes for pandoc
* Theme consists of
    + command line options for pandoc
    + template variables for pandoc
    + a snippet inclusion mechanism
    + bundled resources
* Parameterisation via the command line

# Getting started

To `use themedoc's` default theme use the following incantation to
create a pdf:

    themedoc --theme default myfile.md

A theme is a directory that lives in `~/.themedoc`. To get
started on your own theme quickly copy the default theme:

    cp -R ~/.themedoc/default ~/.themedoc/mytheme

To get help around theme specific parameters go like this:

    themedoc --theme default --help

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











