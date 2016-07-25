ToggleButton
============
The ToggleButton has a similar appearance to a :doc:`button`, however it allows two states; active and inactive. When active, the ToggleButton appears depressed. The functionality of the ToggleButton is similar to a :doc:`checkbutton`.

===========
Constructor
===========
Construction of the ToggleButton widget is made using::

  var togglebutton = new Gtk.ToggleButton(label);

A *label* should be set on the ToggleButton to display the purpose of the widget.

=======
Methods
=======
The ToggleButton active state can be set by the method::

  togglebutton.set_active(active);

When *active* is set to ``true``, the ToggleButton will appear depressed.

Retrieval of the active state of the ToggleButton is made with::

  togglebutton.get_active();

An inconsistent state can also be set on the ToggleButton via::

  togglebutton.set_inconsistent(inconsistent);

The inconsistent state of the ToggleButton is fetched with::

  togglebutton.get_inconsistent();

=======
Signals
=======
The commonly used signals of a ToggleButton are::

  "toggled" (togglebutton)

A ``"toggled"`` signal emits from the ToggleButton when the mode is changed to active or inactive.

=======
Example
=======
Below is an example of a ToggleButton:

.. literalinclude:: _examples/togglebutton.vala

Download: :download:`ToggleButton <_examples/togglebutton.vala>`
