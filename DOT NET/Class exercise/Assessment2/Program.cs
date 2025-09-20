using System;
using System.Data.SqlClient;
dotnet add package System.Data.SqlClient

namespace Assessment2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            Console.WriteLine("Getting Connection ...");

            var datasource = @"LAPTOP-U0JIPKME"; // your server
            var database = "New_Database"; // your database name

            // Create your connection string
            string connString = @"Data Source=" + datasource +
                ";Initial Catalog=" + database + "; Trusted_Connection=True;";

            Console.WriteLine(connString);

            using (SqlConnection conn = new SqlConnection(connString))
            {
                try
                {
                    Console.WriteLine("Opening Connection ...");
                    // Open the connection
                    conn.Open();
                    Console.WriteLine("Connection successful!");

                    // Create the table if it doesn't exist
                    CreateTableIfNotExists(conn);

                    // Display menu
                    bool exit = false;
                    while (!exit)
                    {
                        Console.WriteLine("\nChoose an option:");
                        Console.WriteLine("1. Insert Staff");
                        Console.WriteLine("2. Display Staff");
                        Console.WriteLine("3. Exit");
                        Console.Write("Enter your choice: ");

                        string choice = Console.ReadLine();

                        switch (choice)
                        {
                            case "1":
                                InsertStaff(conn);
                                break;
                            case "2":
                                DisplayStaff(conn);
                                break;
                            case "3":
                                exit = true;
                                break;
                            default:
                                Console.WriteLine("Invalid choice. Please try again.");
                                break;
                        }
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error: " + e.Message);
                }
            }
        }

        static void CreateTableIfNotExists(SqlConnection conn)
        {
            string createTableQuery = @"
                IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='emp_table_lol' AND xtype='U')
                CREATE TABLE emp_table_lol (
                    Name NVARCHAR(100),
                    Empid NVARCHAR(50),
                    Dept NVARCHAR(100),
                    Salary DECIMAL(18, 2)
                )";

            SqlCommand cm = new SqlCommand(createTableQuery, conn);
            cm.ExecuteNonQuery();
            Console.WriteLine("Table created or already exists.");
        }

        static void InsertStaff(SqlConnection conn)
        {
            try
            {
                Console.WriteLine("\n--- Insert Staff ---");
                Console.Write("Enter Name: ");
                string name = Console.ReadLine();

                Console.Write("Enter Employee ID: ");
                string empId = Console.ReadLine();

                Console.Write("Enter Department: ");
                string dept = Console.ReadLine();

                Console.Write("Enter Salary: ");
                string salaryInput = Console.ReadLine();

                // Validate and parse salary
                if (!decimal.TryParse(salaryInput, out decimal salary))
                {
                    Console.WriteLine("Invalid salary format. Please enter a numeric value.");
                    return;
                }

                // Use parameterized query to prevent SQL injection
                string query = @"INSERT INTO emp_table_lol (Name, Empid, Dept, Salary) 
                               VALUES (@Name, @Empid, @Dept, @Salary)";

                SqlCommand cm = new SqlCommand(query, conn);
                cm.Parameters.AddWithValue("@Name", string.IsNullOrEmpty(name) ? (object)DBNull.Value : name);
                cm.Parameters.AddWithValue("@Empid", string.IsNullOrEmpty(empId) ? (object)DBNull.Value : empId);
                cm.Parameters.AddWithValue("@Dept", string.IsNullOrEmpty(dept) ? (object)DBNull.Value : dept);
                cm.Parameters.AddWithValue("@Salary", salary);

                int rows = cm.ExecuteNonQuery();
                if (rows > 0)
                {
                    Console.WriteLine("Record inserted successfully!");
                }
                else
                {
                    Console.WriteLine("No records were inserted.");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error inserting record: " + ex.Message);
            }
        }

        static void DisplayStaff(SqlConnection conn)
        {
            try
            {
                Console.WriteLine("\n--- Staff Records ---");
                string query = "SELECT * FROM emp_table_lol";
                SqlCommand cm = new SqlCommand(query, conn);

                using (SqlDataReader reader = cm.ExecuteReader())
                {
                    if (!reader.HasRows)
                    {
                        Console.WriteLine("No records found.");
                        return;
                    }

                    Console.WriteLine("| {0,-15} | {1,-10} | {2,-15} | {3,-10} |",
                        "Name", "Empid", "Dept", "Salary");
                    Console.WriteLine(new string('-', 60));

                    while (reader.Read())
                    {
                        string name = reader["Name"] == DBNull.Value ? "NULL" : reader["Name"].ToString();
                        string empid = reader["Empid"] == DBNull.Value ? "NULL" : reader["Empid"].ToString();
                        string dept = reader["Dept"] == DBNull.Value ? "NULL" : reader["Dept"].ToString();
                        string salary = reader["Salary"] == DBNull.Value ? "NULL" : reader["Salary"].ToString();

                        Console.WriteLine("| {0,-15} | {1,-10} | {2,-15} | {3,-10} |",
                            name, empid, dept, salary);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error displaying records: " + ex.Message);
            }
        }
    }
}
