"""
This script takes global-configuration.txt and shoves it in each of
the palettes.
"""

def assemble_theme(palette_file,
                   global_config_file="./generator/global-configuration.txt"):
    config_file_lines = list(open(global_config_file).readlines())
    palette_file_lines = list(open(palette_file).readlines())
    combined_lines = []
    for line in palette_file_lines:
        if "Insert global-configuration.txt" in line:
            combined_lines = combined_lines + config_file_lines
        else:
            combined_lines.append(line)

    new_filename = palette_file.split("/")[-1].split(".")[0]
    new_filename += "-theme.el"
    new_file = open(new_filename, 'w')

    for line in combined_lines:
        new_file.write(line)

    new_file.close()

assemble_theme("./generator/material-ocean-high-contrast.el")
assemble_theme("./generator/material-ocean.el")
assemble_theme("./generator/material-palenight-high-contrast.el")
assemble_theme("./generator/material-palenight.el")
assemble_theme("./generator/material-darker.el")
assemble_theme("./generator/material-darker-high-contrast.el")
assemble_theme("./generator/material-lighter.el")
assemble_theme("./generator/material-lighter-high-contrast.el")
#assemble_theme("./generator/material-default.el")
#assemble_theme("./generator/material-default-high-contrast.el")
