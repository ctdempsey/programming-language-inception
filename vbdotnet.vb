Imports System
Imports System.Diagnostics

Module Module1
    Sub Main()
        Console.WriteLine("Hello from VB.Net!")
        Dim ProcessProperties As New ProcessStartInfo
        ProcessProperties.FileName = "node"
        ProcessProperties.Arguments = "javascript.js"
        ProcessProperties.UseShellExecute = false
        Dim process As Process = Process.Start(ProcessProperties)
        process.WaitForExit()
        Console.WriteLine("Goodbye from VB.Net!")
    End Sub
End Module
