EntryCompletion
===============
The EntryCompletion provides an object which allows completion of type words into an :doc:`entry` widget.

===========
Constructor
===========
Construction of the EntryCompletion widget is made using::

  var entrycompletion = new Gtk.EntryCompletion();

=======
Methods
=======
A model containing the data store for completion items should be created and populated separately and then attached with::

  entrycompletion.set_model(model);

The *model* should be a :doc:`liststore` object.

The model attached to the EntryCompletion can be retrieved via::

  entrycompletion.get_model();

The column holding the completion items within the model should also be specified::

  entrycompletion.set_text_column(column);

To prevent completion lookups occuring before a certain number have characters have been entered, the following method can be used::

  entrycompletion.set_minimum_key_length(length);

The *length* parameter should be set to an integer value.

To cycle through the position completions within the Entry::

  entrycompletion.set_inline_completion(inline);

When *inline* is set to ``true``, the user can cycle through the matching completions by tabbing.

Alternatively, there is an option to provide a list of completions popped up in a popup window with::

  entrycompletion.set_popup_completion(popup);

Retrieval of the Entry widget associated with the EntryCompletion can be made with::

  entrycompletion.get_entry();

Additional action items can be added to the EntryCompletion if required, either via plain text or markup with::

  entrycompletion.insert_action_text(index, text);
  entrycompletion.insert_action_markup(index, markup);

The *index* value specifies the location in the dropdown menu where the action item will be added. The *markup* parameter allows tags to be added to customise the added text.

An action can also be deleted by specifying the index via::

  entrycompletion.delete_action(index);

=======
Example
=======
Below is an example of a EntryCompletion:

.. literalinclude:: _examples/entrycompletion.vala

Download: :download:`EntryCompletion <_examples/entrycompletion.vala>`
