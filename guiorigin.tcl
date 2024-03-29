#############################################################################
# Generated by PAGE version 4.24.1
#  in conjunction with Tcl version 8.6
#  Jul 07, 2019 12:59:36 PM EDT  platform: Windows NT
set vTcl(timestamp) ""


if {!$vTcl(borrow)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(active_menu_fg) #000000
}



if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top42
    global vTcl
    set base $vTcl(btop)
    if {$base == ""} {
        set base .top42
    }
    namespace eval ::widgets::$base {
        set dflt,origin 1
        set runvisible 1
    }
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}


proc vTclWindow.top42 {base} {
    if {$base == ""} {
        set base .top42
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background {#18d2d8} 
    wm focusmodel $top passive
    wm geometry $top 1280x720
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 1
    wm maxsize $top 1920 1080
    wm minsize $top 1280 720
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "DreamExplorer"
    vTcl:DefineAlias "$top" "Root" vTcl:Toplevel:WidgetProc "" 1
    ttk::style configure Treeview.Heading -background #d9d9d9
    ttk::style configure Treeview.Heading -font "TkDefaultFont"
    vTcl::widgets::ttk::scrolledtreeview::CreateCmd $top.scr45 \
        -background {#d9d9d9} -height 15 -highlightbackground {#d9d9d9} \
        -highlightcolor black -width 30 
    vTcl:DefineAlias "$top.scr45" "FileTree" vTcl:WidgetProc "Root" 1
        .top42.scr45.01 configure -columns {Col1}
        .top42.scr45.01 heading #0 -text {Tree}
        .top42.scr45.01 heading #0 -anchor center
        .top42.scr45.01 column #0 -width 630
        .top42.scr45.01 column #0 -minwidth 20
        .top42.scr45.01 column #0 -stretch 1
        .top42.scr45.01 column #0 -anchor w
        .top42.scr45.01 heading Col1 -text {Col1}
        .top42.scr45.01 heading Col1 -anchor center
        .top42.scr45.01 column Col1 -width 631
        .top42.scr45.01 column Col1 -minwidth 20
        .top42.scr45.01 column Col1 -stretch 1
        .top42.scr45.01 column Col1 -anchor w
    vTcl:copy_lock $top.scr45
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.scr45 \
        -in $top -x 100 -y 160 -width 1280 -relwidth 0 -height 720 \
        -relheight 0 -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top42 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

