/*
 * Similar to the RadioButton, the CheckButton combines a label and box to
 * indicate the current state. When the CheckButton is toggled, a tick is either
 * shown or hidden.
*/

using Gtk;

public class Example : Window
{
    private CheckButton checkbutton;

    public Example()
    {
        this.title = "CheckButton";
        this.destroy.connect(Gtk.main_quit);

        checkbutton = new CheckButton.with_label("CheckButton");
        checkbutton.toggled.connect(on_checkbutton_toggle);
        this.add(checkbutton);
    }

    private void on_checkbutton_toggle()
    {
        var active = checkbutton.get_active();

        if (active == true)
            stdout.printf("CheckButton toggled on\n");
        else
            stdout.printf("CheckButton toggled off\n");
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
