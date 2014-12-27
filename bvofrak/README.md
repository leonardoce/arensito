bvofrak
=======

This repository hosts a bvofrak layout implementation for Linux and
Windows. For now I only have an xmodmap implementation and a MSKLC one.

If you want informations about the bvofrak layout see
http://bvofrak.blogspot.it/


How to use the xmodmap definition
---------------------------------

To use this xmodmap file you should first load the US keyboard layout
and then modify it using the xmodmap file.

    $ setxkbmap us
    $ xmodmap xmodmap/bvofrak.xmodmap

The previous commands only affect the current session so, if you want
to, you can configure your system to execute this commands every time
that the graphical subsystem starts up.

How to install the layout under Windows
---------------------------------------

You can use the installer that you can find under the `win32` directory.

In the `msklc` directory you can find the sources of the layout
definition file.

Reverting to the US layout under linux
--------------------------------------

Reverting to the US layout is simple as:

    $ setxkbmap us
