CheckButton
===========
The CheckButton widget provides both a status indicator and an integrated label, and is used to display whether the widget is active or not. They are commonly used in preference dialogs to set the status of a feature.

===========
Constructor
===========
Construction of the CheckButton widget is made using::

  var checkbutton = new Gtk.CheckButton(label);

The *label* parameters allows a string of text to be displayed alongside the check status box on the CheckButton.

=======
Methods
=======
The CheckButton label can be set post-construction via::

  checkbutton.set_label(label);

It is good practice to use a mnemonic in the label. This requires an underscore inserted into the label (e.g. "_Cancel"). GTK+ parses the underscore and converts it into an underline beneath the following character, which the user can then access as a shortcut to the function.

  checkbutton.set_use_underline(underline);

.. note:

  Mnemonic shortcuts are highly useful as an accessibility feature and should be used wherever possible. They are particularly important to people with disabilities as they provide quick access to common functions. To access the function using the mnemonic, hold down :kbd:`ALT` and the appropriate character.

CheckButton widgets are inactive by default, however can be programatically set using::

  checkbutton.set_active(active);

The *active* parameter should be set to either ``true`` which sets the CheckButton to ticked, or ``false`` which is unticked.

To retrieve the active state of the CheckButton::

  checkbutton.get_active();

Rather than simply displaying a checked or unchecked status, a CheckButton can also display an inconsistent state which consists of a line through the status box. This is commonly used with other settings to display when a CheckButton does not meet an expected criteria. It can be set via::

  checkbutton.set_inconsistent(inconsistent);

To retrieve whether a CheckButton is set as inconsistent use::

  checkbutton.get_inconsistent();

If the CheckButton is in an inconsistent state, ``true`` will be returned.

=======
Signals
=======
The commonly used signals of a CheckButton are::

  "toggled" (checkbutton)

A ``"toggled"`` signal emits from the CheckButton when the mode is changed to active or inactive.

========
Examples
========
Below is an example of a CheckButton:

.. literalinclude:: _examples/checkbutton.vala

Download: :download:`CheckButton <_examples/checkbutton.vala>`
