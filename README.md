A port of the VSCode Community Material themes. 

The current collection is still a work in progress, and I've only tested the themes with my personal workflow. Please let me know if an element appears to have a clashing color associated to it, since I have to manually add faces in the `global-configuration.txt` file for them to work.

For each of the theme, there are two versions. A "regular" version, which feature a mode bar that doesn't contrast with the background, and the high-contrast version which has a more contrasting mode bar. Both versions are provided.

# Installation

Prerequisite is `autothemer`. Install it from MELPA with `M-x package-refresh-contents RET` then `M-x package-install RET autothemer`.

Since these themes are still in development, they are not yet available on MELPA. As such the configuration has a few extra steps.

First, clone the git repo. Alternatively, download the zip file by going to the top of this page and selecting "Download zip" from the "Code" dropdown menu, and extract the contents.

You then need to add the folder to `custom-themes-load-path`. This can be done by adding the following line to your `.emacs` file.

```
(push "/path/to/directory/folder/emacs-community-material-themes/" custom-theme-load-path)
```

Then, right below that, add the following line to load the theme.
```
(load-theme 'material-ocean-high-contrast t)
```

See the original pallettes [here](https://github.com/material-theme/vsc-material-theme/blob/a0079e8d0cc8711cd81d410827fcc16bcb1f9e6b/scripts/generator/settings/specific/ocean-hc.ts)

It's made with autothemer.

Protip: If there's some mode you'd like me to match the colors from, let me know. 

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
