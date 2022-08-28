An emacs theme that ports the very nice VSCode theme "Material Themes - Ocean High Contrast". 

See the original pallette [here](https://github.com/material-theme/vsc-material-theme/blob/a0079e8d0cc8711cd81d410827fcc16bcb1f9e6b/scripts/generator/settings/specific/ocean-hc.ts)

It's made with autothemer.

Protip: If there's some mode you'd like me to match the colors from, let me know. Right now,
        the tree sitter defaults are all that is defined.

TODO: Prior to release

- [ ] Line numbers
- - [ ] Global Config File
- - [ ] Palenight
- - [ ] Palenight-hc
- - [ ] Ocean
- - [ ] Ocean-hc
- - [x] Darker
- - [ ] Darker-hc
- - [ ] Default
- - [ ] Default-hc

TODO:
- [ ] Add support for more font-locking modes
- [ ] Add the coloring on the quotes for strings. (needs custom faces)
- - [x] `,."'`, `(){}[]` are cyan; Done in tree-sitter
- - [ ] "{}" inside strings are orange
- [ ] Confirm color matching on different languages
- - [x] Python (some features incompatible between VSCode and tree-sitter
- - [ ] C/C++
- - [ ] Rust
- - - [ ] let, mut => cyan
- - - [ ] Self => red
- - - [ ] `$`, `.` in between words => purple
- - - [ ] impl => orange
- - - [ ] traits => yellow
- - - [ ] `thing::thing2::thing3`, need the things to be yellow, and the `::` blue
- - - [ ] methodcalls are blue
- - - [ ] impl, pub, fn are orange
- - - [ ] struct is purple
- - [x] Javascript
- - - [ ] Modules are not recognized by tree sitter.
- - - [ ] hl-face:operator incorrectly unapplied for % ? and : operators
- - - [ ] `this` is identified primarily as a "builtin", in vscode is gray 
- - - [ ] Will require some keywords to be manually changed in js2 mode (to purple)
- [ ] Port the non-high-contrast version
- [ ] Port all the material themes

Note: This is still very much a work in progress. When it's mostly good for release I'll throw some screenshots up. 
