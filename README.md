# xfce4 workspace name widget

a configurable xfce4 workspace name widget written in tcl and bash

## Run

To run/ test the widget works and make configurations as desired, run the application from terminal using

```bash
./workspace_name_widget.tcl
# or
wish workspace_name_widget.tcl
```

Terminate using `Ctrl+c`


## Installation

- open **xfce4 Session and Startup** settings window
- navigate to **Application Autostart** tab
- add `/path/to/installation/directory/workspace_name_widget.tcl`
    - set trigger to `on login`

## Customization

Currently widget configuration is **hard-coded** inside the widget script file (i.e. `workspace_name_widget.tcl`)

Current configuration variables:

variable name | description | data type | default
--|--|--|--
**conf_x** | horizontal coordinate of the widget on the screen (in pixels starting from left) | integer | 590
**conf_y** | vertical coordinate of the widget on the screen (in pixels starting from top) | integer | 3
**conf_height** | widget height (in lines) | integer | 1
**conf_width** | widget width (in characters) | integer | 3
**conf_refresh_after** | check workspace name interval (in milliseconds) | integer | 200
**conf_background_color** | background color | tcl color name/ hex color code | white
**conf_foreground_color** | foreground (text) color | tcl color name/ hex color code | red3
**conf_font** | tcl compliant font configuration string | tcl font string | "sans-serif 11 bold"

## TODO

- [x] fix paths to work relatively rather than by absolute path
- [ ] comment the code
