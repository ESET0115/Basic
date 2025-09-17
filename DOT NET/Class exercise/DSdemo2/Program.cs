namespace DSdemo2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<Dictionary<string, object>> listOfDictionaries = new List<Dictionary<string, object>>();


            Dictionary<string, object> student1 = new Dictionary<string, object>
        {
            { "Id", 1 },
            { "Name", "Piyush" },
            { "Age", 23 },
            { "Course", "Electrical Engineering" }
        };
            listOfDictionaries.Add(student1);


            Dictionary<string, object> student2 = new Dictionary<string, object>
        {
            { "Id", 2 },
            { "Name", "Lakshay" },
            { "Age", 22 },
            { "Course", "Computer Science" }
        };
            listOfDictionaries.Add(student2);


            Dictionary<string, object> student3 = new Dictionary<string, object>
        {
            { "Id", 3 },
            { "Name", "Shivansh" },
            { "Age", 23 },
            { "Course", "Kabutar Science" }
        };
            listOfDictionaries.Add(student3);


            Console.WriteLine("List of Dictionaries:");
            Console.WriteLine("=====================");

            foreach (var dict in listOfDictionaries)
            {
                foreach (var obj in dict)
                {
                    Console.WriteLine($"{obj.Key}: {obj.Value}");
                }
                Console.WriteLine("-----------------");
            }
        }
    }
}
