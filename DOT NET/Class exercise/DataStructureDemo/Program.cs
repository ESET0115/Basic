namespace DataStructureDemo
{
    internal class Program
    {
        class Student
        {
            public int StudentId { get; set; }
            public string Name { get; set; }
            public int Age { get; set; }
            public string Subject { get; set; }

            public Student(int studentId, string name, int age, string subject)
            {
                StudentId = studentId;
                Name = name;
                Age = age;
                Subject = subject;
            }

            public void DisplayStudentInfo()
            {
                Console.WriteLine($"ID: {StudentId}");
                Console.WriteLine($"Name: {Name}");
                Console.WriteLine($"Age: {Age}");
                Console.WriteLine($"Subject: {Subject}");
            }
        }
        static void Main(string[] args)
        {
            List<Student> student_list = new List<Student>();


            Student student1 = new Student(1, "Piyush", 23, "Physics");
            Student student2 = new Student(2, "Lakshay", 22, "Mathematics");
            Student student3 = new Student(3, "Shivansh", 23, "Chemistry");


            student_list.Add(student1);
            student_list.Add(student2);
            student_list.Add(student3);

            // Display all students
            Console.WriteLine("Student List:");
            Console.WriteLine("=============");

            foreach (Student student in student_list)
            {
                student.DisplayStudentInfo();
                Console.WriteLine("-----------------");
            }
        }

        
    }
}