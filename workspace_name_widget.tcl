#!/usr/bin/wish

set var_x 590
set var_y 3
set var_refresh_after 200
set var_background_color white
set var_foreground_color red3
set var_font "sans-serif 11 bold"
set var_path "/home/rawad/projects/ws_name"

wm title . "Workspace name"
wm overrideredirect . 1
wm attributes . -type tooltip
wm attributes . -topmost 1
wm resizable . 0 0
wm geometry . +$var_x+$var_y

set var_workspace_name 0

proc get_workspace_name {} {
    global status var_workspace_name var_path

    set status [catch {exec bash $var_path/get_workspace_name.bash} var_workspace_name]
    if {$status != 0} {
      set var_workspace_name ERR
    }
    # return var_workspace_name
}

proc refresh_workspace_name {} {
    global var_refresh_after
    get_workspace_name
    after $var_refresh_after refresh_workspace_name
}

refresh_workspace_name

grid [label .lbl_output -background $var_background_color -foreground $var_foreground_color -text "Hello World" -height 1 -width 3 -textvariable var_workspace_name -justify center -font $var_font]
