using System;

class Program
{
    static void Main()
    {
        Console.WriteLine("Simple Printer Connection Check");
        Console.WriteLine("================================\n");

        // Create two printers
        Printer printer1 = new Printer("Office Printer");
        Printer printer2 = new Printer("Home Printer");

        // Connect to printers
        printer1.Connect();
        printer2.Connect();

        Console.WriteLine("\nChecking printer connections:");

        // Check if printers are connected
        if (printer1.IsConnected())
        {
            Console.WriteLine("✓ Printer 1 is connected");
        }

        if (printer2.IsConnected())
        {
            Console.WriteLine("✓ Printer 2 is connected");
        }

        Console.WriteLine("\nAll printers are ready to use!");
        Console.ReadLine();
    }
}