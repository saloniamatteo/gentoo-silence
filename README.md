# Gentoo-Silence GRUB2 theme

This theme was forked from Arch-Silence.
Originally made by Filippo Ghibellini, modified by Matteo Salonia.

## Font
The font used is Terminus.

The provided config sets the font size to 32 by default,
for displays with a resolution of 2560x1440.

A font size of 12 is also provided, in case you have a smaller display.

Convert your own font:

```
grub-mkfont -s SIZE -o OUT.pf2 /usr/share/fonts/YOUR_FONT
```

Where:
- `SIZE`: font size
- `OUT`: output path (can also just be a filename)
- `YOUR_FONT`: path to your font (most fonts are in `/usr/share/fonts/`)

## License
If not explicitly stated otherwise all the files in this project are distributed under the [GNU General Public License](./COPYING).

## Authors
Filippo Ghibellini, Matteo Salonia.
