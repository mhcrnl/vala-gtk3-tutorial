Switch
======
A Switch widget provides a toggle which can be placed in an on or off state. It is commonly used to indicate the status of a piece of hardware such as a wireless device, or laptop trackpad.

===========
Constructor
===========
Construction of the Switch widget is made using::

  var switch = new Gtk.Switch();

=======
Methods
=======
To retrieve the state of the Switch as a True or False value::

  switch.get_active();

Alternatively, to set a state on the Switch programmatically::

  switch.set_active(active);

If *active* is set to True, the Switch will be in the on position.

=======
Signals
=======
The commonly use signals of a Switch are::

  "notify::active" (switch, state)

The ``"notify::active"`` signal emits when the Switch is toggled to either the on or off states.

=======
Example
=======
Below is an example of a Switch:

.. literalinclude:: _examples/switch.vala

Download: :download:`Switch <_examples/switch.vala>`
