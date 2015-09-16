geigeR
======

A simple *R* program that generates a series of sounds that simulate a geiger
counter. The program plays these sounds through the users speakers, and the
audio tracks are also saved to disk as Wave (.wav) files.

Dependencies
------------
*R* - the statistics language for pirates (arrrrrr...). Check it out here:
https://www.cran.r-project.org/

audio - the audio interface for *R*. Read about it here:
https://cran.r-project.org/web/packages/audio/audio.pdf
To install, fire up *R* and type `install.packages('audio')`.

Usage
-----

Run *R* from the root directory of the project and type `source('geiger.R')`.

License
-------

***Beerware***
/*
 * ----------------------------------------------------------------------------
 * "THE BEER-WARE LICENSE" (Revision 42):
 * <beau@inbeta.org> wrote this file.  As long as you retain this notice you
 * can do whatever you want with this stuff. If we meet some day, and you think
 * this stuff is worth it, you can buy me a beer in return.   Beau Johnston.
 * ----------------------------------------------------------------------------
 */

About
-----
I wrote this one evening to generate some audio assets for some real world code
I'm writing. As such, don't expect this to be maintained (at all). If you have
questions, don't hesitate to ask me.

cheers,
Beau
