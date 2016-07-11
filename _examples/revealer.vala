/*
 * The Revealer container is similar to an Expander, however it does not provide
 * a native feature to show or hide the content.
*/

using Gtk;

public class Example : Window
{
    private Gtk.Revealer revealer;

    public Example()
    {
        this.title = "Revealer";
        this.destroy.connect(Gtk.main_quit);

        var grid = new Gtk.Grid();
        this.add(grid);

        var button = new Gtk.Button.with_label("Revealer");
        button.clicked.connect(on_reveal_clicked);
        grid.attach(button, 0, 0, 1, 1);

        revealer = new Revealer();
        revealer.set_reveal_child(true);
        grid.attach(revealer, 0, 1, 1, 1);

        var label = new Gtk.Label("Label in a Revealer");
        label.set_size_request(200, 200);
        revealer.add(label);
    }

    private void on_reveal_clicked(Button button)
    {
        var reveal = revealer.get_reveal_child();
        revealer.set_reveal_child(!reveal);
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
