Button
======
The Button widget is the most commonly used of the button family of widgets. It is typically used to begin the process of an operation such as running a task.

===========
Constructor
===========
Construction of the Button widget is made using::

  var button = new Gtk.Button();

A label can also be applied at construction with an alternative call::

  var button = new Gtk.Button.with_label(label);

=======
Methods
=======
The label text displayed on the Button can be constructed via::

  button.set_label(label);

Text set on the Button can also be retrieved::

  button.get_label();

Mnemonic accelerator keys are accessibility features allowing a combination of :kbd:`ALT` and a chosen letter to be used as a shortcut. These shortcuts are identified by an underscore beneath a letter. This feature is enabled or disabled with::

  button.set_use_underline(underline);

When *underline* is set to ``true``, the letter after the underscore in the label string will be used as the mnemonic shortcut.

By default, Button widgets have a border and appear raised up. This can be adjusted with::

  button.set_relief(relief);

The *relief* parameter should be set to one of the following:

* ``Gtk.Relief.NORMAL``
* ``Gtk.Relief.NONE``

An image can also be displayed on the Button with::

  button.set_image(image);

The *image* argument should be set to an appropriate :doc:`image` to be displayed in the Button.

The position of an added image can also be defined::

  button.set_image_position(position);

Setting of the *position* value should be one of the following values:

* ``Gtk.Position.LEFT``
* ``Gtk.Position.RIGHT``
* ``Gtk.Position.TOP``
* ``Gtk.Position.BOTTOM``

Typically, when a Button is clicked, the Button gains the input focus. In some cases, this may not be desirable and can be configured with::

  button.set_focus_on_click(focus_on_click)

When *focus_on_click* is set to ``false``, the input will remain with the main content rather than on the Button.

=======
Example
=======
Below is an example of a Button:

.. literalinclude:: _examples/button.vala

Download: :download:`Button <_examples/button.vala>`
