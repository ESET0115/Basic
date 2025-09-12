namespace Assignment2
{
    internal class Program
    {
        private class Book(string title, string author, decimal price, int quantity)
        {
            public string Title { get; } = title;
            public string Author { get; } = author;
            public decimal Price { get; } = price;
            public int Quantity { get; set; } = quantity;
        }
        private class BookShopManagementSystem
        {
            private readonly List<Book> inventory = new();
            private readonly HashSet<string> customers = new();
            private string currentCustomer = string.Empty;

            public void Run()
            {
                while (true)
                {
                    Console.Clear();
                    ShowMenu();
                    Console.Write("Choose an option: ");
                    string choice = Console.ReadLine();

                    switch (choice)
                    {
                        case "1":
                            AddNewBook();
                            break;
                        case "2":
                            SellBook();
                            break;
                        case "3":
                            ShowInventory();
                            break;
                        case "4":
                            ListedCustomers();
                            break;
                        case "5":
                            return;
                        default:
                            Console.WriteLine("Invalid choice. Press any key to try again...");
                            Console.ReadKey();
                            break;
                    }
                }
            }

            private static void ShowMenu()
            {
                Console.WriteLine("Book Shop Management System");
                Console.WriteLine("1. Add New Book");
                Console.WriteLine("2. Sell Book");
                Console.WriteLine("3. Show Inventory");
                Console.WriteLine("4. Listed Customers");
                Console.WriteLine("5. Exit");
            }

            private void AddNewBook()
            {
                Console.Clear();
                Console.WriteLine("Add New Book");

                Console.Write("Enter Title: ");
                string title = Console.ReadLine();

                Console.Write("Enter Author: ");
                string author = Console.ReadLine();

                decimal price;
                while (true)
                {
                    Console.Write("Enter Price: ");
                    if (decimal.TryParse(Console.ReadLine(), out price) && price > 0)
                        break;
                    else
                        Console.WriteLine("Invalid price. Please enter a positive number.");
                }

                int quantity;
                while (true)
                {
                    Console.Write("Enter Quantity: ");
                    if (int.TryParse(Console.ReadLine(), out quantity) && quantity > 0)
                        break;
                    else
                        Console.WriteLine("Invalid quantity. Please enter a positive integer.");
                }

                inventory.Add(new Book(title, author, price, quantity));
                Console.WriteLine("Book added successfully! Press any key to return to menu...");
                Console.ReadKey();
            }

            private void SellBook()
            {
                if (inventory.Count == 0)
                {
                    Console.WriteLine("No books available in inventory. Press any key to return to menu...");
                    Console.ReadKey();
                    return;
                }

                if (string.IsNullOrEmpty(currentCustomer))
                {
                    Console.Write("Enter Customer Name: ");
                    currentCustomer = Console.ReadLine();
                    if (!string.IsNullOrWhiteSpace(currentCustomer))
                        customers.Add(currentCustomer);
                }

                Console.Clear();
                Console.WriteLine("Sell Book");

                Console.Write("Enter Book Title: ");
                string title = Console.ReadLine();

                Book bookToSell = inventory.FirstOrDefault(b => b.Title.Equals(title, StringComparison.OrdinalIgnoreCase));
                if (bookToSell == null)
                {
                    Console.WriteLine("Book not found. Press any key to return to menu...");
                    Console.ReadKey();
                    return;
                }

                Console.Write("Enter Quantity to Sell: ");
                int quantityToSell;
                while (!int.TryParse(Console.ReadLine(), out quantityToSell) || quantityToSell <= 0)
                {
                    Console.WriteLine("Invalid quantity. Please enter a positive integer.");
                }

                if (quantityToSell > bookToSell.Quantity)
                {
                    Console.WriteLine("Insufficient stock. Press any key to return to menu...");
                    Console.ReadKey();
                    return;
                }

                bookToSell.Quantity -= quantityToSell;
                Console.WriteLine($"Sold {quantityToSell} copies of '{bookToSell.Title}' to {currentCustomer}.");
                Console.WriteLine("Press any key to return to menu...");
                Console.ReadKey();
            }

            private void ShowInventory()
            {
                Console.Clear();
                Console.WriteLine("Inventory:");

                if (inventory.Count == 0)
                {
                    Console.WriteLine("No books available in inventory.");
                }
                else
                {
                    Console.WriteLine("{0,-30} {1,-20} {2,8} {3,10}", "Title", "Author", "Price", "Quantity");
                    Console.WriteLine(new string('-', 72));
                    foreach (var book in inventory)
                    {
                        Console.WriteLine("{0,-30} {1,-20} {2,8:C} {3,10}", book.Title, book.Author, book.Price, book.Quantity);
                    }
                }
                Console.WriteLine("Press any key to return to menu...");
                Console.ReadKey();
            }

            private void ListedCustomers()
            {
                Console.Clear();
                Console.WriteLine("Listed Customers:");

                if (customers.Count == 0)
                {
                    Console.WriteLine("No customers have purchased books yet.");
                }
                else
                {
                    foreach (var customer in customers)
                    {
                        Console.WriteLine(customer);
                    }
                }
                Console.WriteLine("Press any key to return to menu...");
                Console.ReadKey();
            }
        }
        static void Main(string[] args)
        {

            var bookShop = new BookShopManagementSystem();
            bookShop.Run();

            Console.WriteLine("Press any key to exit...");
            Console.ReadKey();
        }
    }
}
