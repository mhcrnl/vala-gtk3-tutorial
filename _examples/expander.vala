/*
 * An Expander allows for widgets to be hidden or shown depending on user
 * choice. Typically, it is used to hide content which the user won't always
 * require.
*/

using Gtk;

public class Example : Window
{
    public Example()
    {
        this.title = "Expander";
        this.set_default_size(200, -1);
        this.destroy.connect(Gtk.main_quit);

        var expander = new Gtk.Expander("Expander");
        expander.set_resize_toplevel(true);
        this.add(expander);

        var label = new Gtk.Label("Label in an Expander");
        label.set_size_request(200, 200);
        expander.add(label);
    }

    public static int main(string[] args)
    {
        Gtk.init(ref args);

        var window = new Example();
        window.show_all();

        Gtk.main();

        return 0;
    }
}
