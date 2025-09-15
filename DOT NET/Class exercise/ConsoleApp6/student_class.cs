using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading.Tasks.Sources;

namespace ConsoleApp6
{
    internal class student_class
    {
        int student_id;
        string name;
        int age;
        string contact_no;
        string email_id;
        int std;
        float CGPA;


        public void initialize()
        {
            student_id = 0;
            name = "abcd";
        }

        public void showDisplay()
        {
            Console.WriteLine("Displaying object");
            Console.WriteLine(name);
        }

        public student_class(int id, string fname, string std_sec, string contact, float score)
        {
            student_id = id;
            name = fname;
            std = std_sec;
            contact_no = contact;
            cgpa = score;
        }


    }
}
