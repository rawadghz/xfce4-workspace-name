#!/usr/bin/wish

set conf_x 590
set conf_y 3
set conf_refresh_after 200
set conf_background_color white
set conf_foreground_color red3
set conf_font "sans-serif 11 bold"
set conf_path "/home/rawad/projects/ws_name"

wm title . "Workspace name"
wm overrideredirect . 1
wm attributes . -type tooltip
wm attributes . -topmost 1
wm resizable . 0 0
wm geometry . +$conf_x+$conf_y

set var_workspace_name 0

proc get_workspace_name {} {
    global status var_workspace_name conf_path

    set status [catch {exec bash $conf_path/get_workspace_name.bash} var_workspace_name]
    if {$status != 0} {
      set var_workspace_name ERR
    }
    # return var_workspace_name
}

proc refresh_workspace_name {} {
    global conf_refresh_after
    get_workspace_name
    after $conf_refresh_after refresh_workspace_name
}

refresh_workspace_name

grid [label .lbl_output -background $conf_background_color -foreground $conf_foreground_color -text "Hello World" -height 1 -width 3 -textvariable var_workspace_name -justify center -font $conf_font]
