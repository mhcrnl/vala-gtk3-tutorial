EntryBuffer
===========
An EntryBuffer is a holding object for text in an :doc:`entry` widget, often for use when sharing content between multiple Entry widgets. Typically it will not be manually created as the Entry creates a buffer automatically when constructed.

===========
Constructor
===========
Construction of the EntryBuffer widget is made using::

  var entrybuffer = new Gtk.EntryBuffer(text);

The *text* parameter takes a string which will be added to the text immediately after construction.

=======
Methods
=======
Retrieval of text held by the EntryBuffer is made with::

  entrybuffer.get_text();

Text can be set in the EntryBuffer programatically with the method::

  entrybuffer.set_text(text, n_chars);

The *text* parameter takes the string to add while the *n_chars* parameter specifies the number of characters the text parameter contains or alternatively use ``-1`` to add all characters.

Insertion of text at a specified position can be done via::

  entrybuffer.insert_text(position, text);

The *position* value is the number of characters along the text should be inserted at with ``0`` designated as the beginning of the EntryBuffer. The *text* parameter should be the string of text to be inserted.

A range of text can also be deleted by calling::

  entrybuffer.delete_text(position, n_chars);

The *position* parameter should be the starting position of the cursor. The *n_chars* parameter indicates the number of characters from the position to be deleted. When set to a negative number, all characters up to the cursor are deleted.

The length of the current string held by the EntryBuffer can be fetched::

  entrybuffer.get_length();

A maximum number of characters which can be allowed in the EntryBuffer can be set via::

  entrybuffer.set_max_length(length);

To check the maximum length the EntryBuffer can accept::

  entrybuffer.get_max_length();

=======
Signals
=======
The commonly used signals of an EntryBuffer are::

  "inserted-text" (buffer, position, chars, n_chars)
  "deleted-text" (buffer, position, n_chars)

The ``"inserted-text"`` and ``"deleted-text"`` signals are activated when textual values are added to or deleted from the EntryBuffer. Both pass the EntryBuffer, the position at which the change occurred, and the number of characters that were added and removed. The ``"inserted-text"`` signal however has an extra value which passes the string of chracters which were inserted.

=======
Example
=======
Below is an example of a EntryBuffer:

.. literalinclude:: _examples/entrybuffer.vala

Download: :download:`EntryBuffer <_examples/entrybuffer.vala>`
