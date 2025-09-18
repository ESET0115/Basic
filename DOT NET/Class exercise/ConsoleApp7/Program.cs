namespace ConsoleApp7
{
    // Missing Student class definition
    public class Student
    {
        public int id { get; set; }
        public string name { get; set; }
        public int marks { get; set; }

        public Student(int id, string name, int marks)
        {
            this.id = id;
            this.name = name;
            this.marks = marks;
        }

        public override bool Equals(object obj)
        {
            if (obj is Student other)
            {
                return id == other.id && name == other.name && marks == other.marks;
            }
            return false;
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(id, name, marks);
        }
    }

    internal class Program
    {
        static void Main(string[] args)
        {
            //List Example
            List<Student> students = new List<Student>();

            // Add Student objects to the list
            Student first = new Student(1, "Alice", 10);
            Student second = new Student(2, "Bob", 90);
            Student third = new Student(3, "Charlie", 78);

            students.Add(first);
            students.Add(second);
            students.Add(third);

            // Access and display each student using foreach
            Console.WriteLine("Student List:");

            foreach (Student s in students)
            { 
                Console.WriteLine($"ID: {s.id}, Name: {s.name}, Marks: {s.marks}");
            }

            // Access a specific object by index
            Console.WriteLine($"\nSecond student is: {students[1].name}");

            //Dictionary Example
            Dictionary<string, Student> students_dict = new Dictionary<string, Student>();

            students_dict.Add("firstStudent", first);
            students_dict.Add("secondStudent", second); // Fixed typo
            students_dict.Add("thirdStudent", third);


            Console.WriteLine("\nDictionary Values:");

            foreach (KeyValuePair<string, Student> student in students_dict)
            {
                Console.WriteLine($"Key: {student.Key}, ID: {student.Value.id}");
            }


            //Hashset Example
            Console.WriteLine("\nHashset demo:");

            HashSet<Student> students_hashset = new HashSet<Student>();

            students_hashset.Add(first);
            students_hashset.Add(second);
            students_hashset.Add(first); // This won't be added due to HashSet uniqueness
            students_hashset.Add(third);


            foreach (Student student in students_hashset)
            {

                Console.WriteLine($"ID: {student.id}, Name: {student.name}");
            }


            //Stack Demo - Fixed missing code
            Console.WriteLine("\nStack demo:");

            Stack<Student> students_stack = new Stack<Student>();

            students_stack.Push(first);
            students_stack.Push(second);
            students_stack.Push(third);


            Student pop_stack = students_stack.Pop();

            Console.WriteLine($"Popped from stack: {pop_stack.name}");


            // Show remaining items in stack
            Console.WriteLine("Remaining in stack:");

            foreach (Student student in students_stack)
            {
                Console.WriteLine(student.name);
            }


            //Queue demo
            Console.WriteLine("\nQueue demo:");

            Queue<Student> students_queue = new Queue<Student>();

            students_queue.Enqueue(first);
            students_queue.Enqueue(second);
            students_queue.Enqueue(third);

            Console.WriteLine($"Dequeued: {students_queue.Dequeue().name}");

            // Show remaining items in queue
            Console.WriteLine("Remaining in queue:");

            foreach (Student student in students_queue)
            {
                Console.WriteLine(student.name);
            }
        }
    }
}
