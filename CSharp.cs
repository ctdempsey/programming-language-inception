using System;
using System.Diagnostics;

namespace CSharp
{
    class CSharp
    {
        public static void Main( string[] args )
        {
            Console.Write("Hello from C#!\n");
            var processInfo = new ProcessStartInfo
            {
                UseShellExecute = false,
                FileName = "mono",
                Arguments = "vbdotnet.exe",
            };
            using (var process = Process.Start(processInfo))
            {
                process.WaitForExit();
            }
            Console.Write("Goodbye from C#!\n");
        }
    }
}
