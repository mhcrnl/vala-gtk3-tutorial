RadioButton
===========
A RadioButton is mostly used in conjunction with other RadioButton widgets to provide a group of options, of which only one can be selected at any one time. They are commonly used when one option must be chosen.

===========
Constructor
===========
Construction of the RadioButton widget is made using::

  var radiobutton = new Gtk.RadioButton(group);

The *group* parameter must be provided, however can be set to ``null`` if the RadioButton is the first to be created in the group. Subsequent RadioButton widgets will specify the group value.
