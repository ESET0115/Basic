// Basic printer class
public class Printer : IPrinter
{
    public string Name;

    public Printer(string name)
    {
        Name = name;
    }

    public bool IsConnected()
    {
        // Simple check - in real life, this would check actual connection
        return true;
    }

    public void Connect()
    {
        Console.WriteLine($"Connecting to {Name}...");
        Console.WriteLine($"{Name} is now connected!");
    }
}