import std.stdio;
import std.process;

void main()
{
    writeln("Hello from D!");
    stdout.flush();
    auto pid = spawnProcess("./pascal.exe");
    wait(pid);
    writeln("Goodbye from D!");
}
