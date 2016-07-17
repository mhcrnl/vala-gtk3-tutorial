SpinButton
==========
The SpinButton widget provides a combination of an :doc:`entry` and two associated buttons which allow numerical values held in the Entry to be adjusted. The SpinButton value can be changed by either the keyboard or using the buttons.

===========
Constructor
===========
Construction of the SpinButton widget is made using::

  var spinbutton = new Gtk.SpinButton();

=======
Methods
=======
The value within the SpinButton can be obtained using the methods::

  spinbutton.get_value();
  spinbutton.get_value_as_int();

Use of the ``get_value()`` method will return the decimal number, while the ``get_value_as_int()`` method returns an integer.

Setting the value of the SpinButton is made using::

  spinbutton.set_value(value);

The number of digits displayed by the SpinButton can be configured by calling::

  spinbutton.set_digits(digits);

An :doc:`adjustment` object can be specified post-construction by::

  spinbutton.set_adjustment(adjustment);

The update policy of the SpinButton may be changed with::

  spinbutton.set_update_policy(policy);

The *policy* parameter should be set to one of the following constants:

* ``Gtk.UpdatePolicy.ALWAYS`` - display any number entered.
* ``Gtk.UpdatePolicy.UPDATE_IF_VALID`` - only display a valid number otherwise revert to last 'good' value.

To prevent non-numeric vlaues being entered, change the method::

  spinbutton.set_numeric(numeric);

When *numeric* is set to ``false``, any formatted output that includes non-numeric characters (e.g. percentages) will not display.

The SpinButton can be forced to wrap around when incrementing or decrementing via::

  spinbutton.set_wrap(wrap);

When a number is entered, if it does not match a step value, the number can be snapped to the step value with::

  spinbutton.set_snap_to_ticks(snap);

The SpinButton can be adjusted programatically via::

  spinbutton.spin(direction, increment);

The *direction value indicates which way the SpinButton will move with a constant of:

* ``Gtk.Spin.STEP_FORWARD``
* ``Gtk.Spin.STEP_BACKWARD``
* ``Gtk.Spin.PAGE_FORWARD``
* ``Gtk.Spin.PAGE_BACKWARD``
* ``Gtk.Spin.HOME``
* ``Gtk.Spin.END``
* ``Gtk.Spin.USER_DEFINED``

The *increment* value specifies the amount to adjust the SpinButton.

A SpinButton can forced to update if required with the use of::

  spinbutton.update()

=======
Example
=======
Below is an example of a SpinButton:

.. literalinclude:: _examples/spinbutton.vala

Download: :download:`SpinButton <_examples/spinbutton.vala>`
