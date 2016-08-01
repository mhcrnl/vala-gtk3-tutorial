LinkButton
==========
A LinkButton has the appearance of a :doc:`button`, however when clicked it will launch a specified web link defined by the programmer.

===========
Constructor
===========
Construction of the LinkButton widget is made using::

  var linkbutton = new Gtk.LinkButton(uri);

The *uri* parameter must be specified which will be loaded when the LinkButton is clicked by the user.

A Linkbutton can also be constructed with a label string displayed rather than the URI::

  var linkbutton = new Gtk.LinkButton.with_label(uri, label);

=======
Methods
=======
The URI and label string can also be set in the LinkButton with the methods::

  linkbutton.set_uri(uri);
  linkbutton.set_label(label);

The URI can also be retrieved from the LinkButton if required::

  linkbutton.get_uri();

A check can be made on whether the LinkButton URI has been visited with::

  linkbutton.get_visited();

The visited property can also be set programatically with::

  linkbutton.set_visited(visited);

=======
Signals
=======
The commonly used signals of an LinkButton are::

  "activate-link" (linkbutton)

An ``"activate-link"`` signal is emitted when the user clicks on the LinkButton. By default, clicking on the LinkButton opens a web browser but the signal can be used to cause another function with custom behaviour to be run.

=======
Example
=======
Below is an example of a LinkButton:

.. literalinclude:: _examples/linkbutton.vala

Download: :download:`LinkButton <_examples/linkbutton.vala>`
