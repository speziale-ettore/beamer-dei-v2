
Beamer DEI v2
=============

This is an attempt to reproduce the slide template of Dipartimento di
Elettronica e Informazione -- Politecnico di Milano as as Beamer theme.

Current features:

* a collection of simple tests
* a beamer color theme
* a beamer font theme
* a beamer inner theme
* a beamer outer theme
* a beamer full theme

The partitioning into different themes was done only to organize the sources.
You can use every theme standalone, but this is not encouraged because they were
designed to work together.

Unfortunately, I am not very expert in defining Beamer themes, so any suggestion
to improve the theme is welcome.

Install
-------

Themes are distributed using standard GNU packaging tools, so:

    $ ./configure --prefix=$INSTALL_PREFIX
    $ make
    $ make install

Themes will be installed under the TeX tree in `$INSTALL_PREFIX/share/texmf`.

If you prefer putting themes into your LaTeX project, just copy the contents of
`texmf/*` to your project compilation directory.

Options
-------

The theme defines some beamer options to ease the burden of preparing a new
lecture.

The `insertsectiontoc` beamer option allows to automatically insert a table of
contents before each section. The current section is highlighted, while the
others are shaded. It is equivalent to the following beamer code:

    \AtBeginSection[]
    {
      \begin{frame}{Outline}
        \tableofcontents[currentsection]
      \end{frame}
    }

By default it is disabled.
