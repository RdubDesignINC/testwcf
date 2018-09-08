using System;

namespace consoleTest
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("...testing console app build....");
            Console.WriteLine("Calling Service1");
            var test = "";
            using (ServiceReference1.WCFTestServiceClient client = new ServiceReference1.WCFTestServiceClient())
            {
                test = client.GetData(88);
            }

            Console.WriteLine($"This is what I got from my custom service! - {test}");

            Console.WriteLine("Change 2");
        }
    }
}
