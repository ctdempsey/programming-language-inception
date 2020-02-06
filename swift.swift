import Foundation
#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif


func main() {
  defer {
    let p = Process()
    p.executableURL = URL(fileURLWithPath: "./go.exe")
    p.standardError = Pipe()
    do { try p.run() } catch {}
    p.waitUntilExit()
  }
  print("Hello from Swift!")
  fflush(stdout)
}

main()
print("Goodbye from Swift!")
