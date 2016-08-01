ButtonBox
=========
The ButtonBox container can be used to display a range of widgets, primarily the :doc:`button` widget, in a listing with the sizing calculated based on each widget contained.

===========
Constructor
===========
Construction of the SearchEntry widget is made using::

  var buttonbox = new Gtk.ButtonBox(orientation);

The *orientation* of the ButtonBox is set to horizontal by default, however can be declared to either:

* ``Gtk.Orientation.VERTICAL``
* ``Gtk.Orientation.HORIZONTAL``

=======
Methods
=======
Widgets are added to the ButtonBox using the method::

  buttonbox.add(child);

A widget may also be removed with::

  buttonbox.remove(child);

A child can be reordered within the ButtonBox via the method::

  buttonbox.reorder_child(child, position);

The *child* specified the child widget to be moved, with the *position* value set as an integer for the new position within the ButtonBox.

ButtonBox supports a number of layouts to customise the appearance of your application. This is done by using::

  buttonbox.set_layout(layout)

The *layout* parameter must be set to one of the following:

* ``Gtk.ButtonBoxStyle.SPREAD`` - forces the buttons to spread out over the maximum space they have available
* ``Gtk.ButtonBoxStyle.EDGE`` - places the buttons at the edges of the ButtonBox
* ``Gtk.ButtonBoxStyle.START`` - place buttons at the start of the ButtonBox
* ``Gtk.ButtonBoxStyle.END`` - place buttons at the end of the ButtonBox
* ``Gtk.ButtonBoxStyle.CENTER`` places buttons in the middle of the ButtonBox container

Spacing can be added between each child widget via::

  buttonbox.set_spacing(spacing);

In some cases it is useful to have a button within the ButtonBox be positioned seperately from the other buttons. This is commonly used for 'Help' or 'About' buttons, and can be set by doing::

  buttonbox.set_child_secondary(child, is_secondary);

The *child* parameter is the name of the Button which is to be positioned separately. Setting the *is_secondary* parameter to ``true`` will separate the button.

By default, all buttons within the ButtonBox are homogeneous. It may be necessary to force one button to be non-homogeneous (for size reasons). This is achievable with::

  buttonbox.set_child_non_homogeneous(child, non_homogeneous);

The *child* parameter is the name of the Button which is to be set as non-homogeneous. The *non_homogeneous* argument should be set to ``true`` to exempt the child from being homogeneous with the other child buttons.

=======
Example
=======
Below is an example of a ButtonBox:

.. literalinclude:: _examples/buttonbox.vala

Download: :download:`ButtonBox <_examples/buttonbox.vala>`
