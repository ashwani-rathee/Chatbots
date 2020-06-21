using Gtk

cb = GtkComboBoxText()
choices = ["one", "two", "three", "four"]
for choice in choices
  push!(cb,choice)
end
# Lets set the active element to be "two"
set_gtk_property!(cb,:active,1)

signal_connect(cb, "changed") do widget, others...
  # get the active index
  idx = get_gtk_property(cb, "active", Int)
  # get the active string 
  # We need to wrap the GAccessor call into a Gtk bytestring
  str = Gtk.bytestring( GAccessor.active_text(cb) ) 
  println("Active element is \"$str\" at index $idx")
end

win = GtkWindow("ComboBoxText Example",400,200)
push!(win, cb)
showall(win)