using Gtk

win = GtkWindow("Julius", 400, 200)
"""
GtkWindowLeaf(name="", parent, width-request=-1, height-request=-1,
 visible=TRUE, sensitive=TRUE, app-paintable=FALSE, can-focus=FALSE,
 has-focus=FALSE, is-focus=FALSE, can-default=FALSE, has-default=FALSE,
 receives-default=FALSE, composite-child=FALSE, style, events=0,
 no-show-all=FALSE, has-tooltip=FALSE, tooltip-markup=NULL,
 tooltip-text=NULL, window, double-buffered=TRUE, halign=GTK_ALIGN_FILL,
 valign=GTK_ALIGN_FILL, margin-left=0, margin-right=0, margin-top=0, 
margin-bottom=0, margin=0, hexpand=FALSE, vexpand=FALSE, hexpand-set=FALSE,
 vexpand-set=FALSE, expand=FALSE, border-width=0, resize-mode=GTK_RESIZE_QUEUE,
 child, type=GTK_WINDOW_TOPLEVEL, title="My window", role=NULL, resizable=TRUE,
 modal=FALSE, window-position=GTK_WIN_POS_NONE, default-width=-1,
 default-height=-1, destroy-with-parent=FALSE, 
hide-titlebar-when-maximized=FALSE, icon, icon-name=NULL,
 screen, type-hint=GDK_WINDOW_TYPE_HINT_NORMAL, skip-taskbar-hint=FALSE,
 skip-pager-hint=FALSE, urgency-hint=FALSE, accept-focus=TRUE, 
focus-on-map=TRUE, decorated=TRUE, deletable=TRUE, 
gravity=GDK_GRAVITY_NORTH_WEST, transient-for, attached-to,
 opacity=1.000000, has-resize-grip=TRUE, resize-grip-visible=TRUE,
 application, ubuntu-no-proxy=FALSE, is-active=FALSE, 
has-toplevel-focus=FALSE, startup-id, mnemonics-visible=TRUE,
 focus-visible=TRUE, )
"""

#b = GtkButton("Talk to me")
#push!(win,b)
#function on_button_clicked(w)
#  println("The button has been clicked")
#end
#signal_connect(on_button_clicked, b, "clicked")

vbox = GtkBox(:v)  # :h makes a horizontal layout, :v a vertical layout
push!(win, vbox)
cancel = GtkButton("Cancel")
ok = GtkButton("OK")
push!(vbox, cancel)
push!(vbox, ok)
showall(win)

visible(win)

visible(win, false)

visible(win)

visible(win, true)