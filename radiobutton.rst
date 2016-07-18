RadioButton
===========
A RadioButton is mostly used in conjunction with other RadioButton widgets to provide a group of options, of which only one can be selected at any one time. They are commonly used when one option must be chosen.

===========
Constructor
===========
Construction of the RadioButton widget is made using::

  var radiobutton = new Gtk.RadioButton(group);

The *group* parameter must be provided, however can be set to ``null`` if the RadioButton is the first to be created in the group. Subsequent RadioButton widgets will specify the group value.

A label can also be supplied at construction time via::

  var radiobutton = new Gtk.RadioButton.with_label(group, label);

=======
Methods
=======
To join a RadioButton to a group after construction use::

  radiobutton.join_group(group);

Retrieval of the associated group can also be made with::

  radiobutton.get_group();

The label associated with the RadioButton can be set after constructing with::

  radiobutton.set_label(label);

It is good practice to use a mnemonic in the label. This requires an underscore inserted into the label (e.g. "_Cancel"). GTK+ parses the underscore and converts it into an underline beneath the following character, which the user can then access as a shortcut to the function.

  radiobutton.set_use_underline(underline);

.. note:

  Mnemonic shortcuts are highly useful as an accessibility feature and should be used wherever possible. They are particularly important to people with disabilities as they provide quick access to common functions. To access the function using the mnemonic, hold down :kbd:`Alt` and the appropriate character.

To set the RadioButton as active call the method::

  radiobutton.set_active(active);

When *active* is set to ``true``, the RadioButton indicator will feature a dot. If ``false`` is specified, the dot will be removed.

The active state of the RadioButton can also be retrieved using::

  radiobutton.get_active();

In some cases, the RadioButton may be set to an inconsistent state, which is used to indicate the status of other RadioButton widgets. For example, three RadioButton's may be a mix of set and unset, which leaves the fourth set as inconsistent. This can be set programatically with::

  radiobutton.set_inconsistent(inconsistent);

To retrieve whether a RadioButton is set as inconsistent use::

  radiobutton.get_inconsistent();

If the RadioButton is in an inconsistent state, ``true`` will be returned.

=======
Signals
=======
The commonly used signals of a RadioButton are::

  "toggled" (radiobutton)
  "group-changed" (radiobutton)

A ``"toggled"`` signal emits from the RadioButton when the mode is changed to active or inactive. When using this signal, you will need to check which RadioButton is receiving the active or inactive state. This is down to the ``"toggled"`` signal being emitted twice; once for the RadioButton becoming active and again for the RadioButton becoming inactive. The ``"group-changed"`` signal emits whenever a RadioButton changes which group it belongs to.

=======
Example
=======
Below is an example of a RadioButton:

.. literalinclude:: _examples/radiobutton.vala

Download: :download:`RadioButton <_examples/radiobutton.vala>`
