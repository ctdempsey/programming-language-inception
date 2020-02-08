printfn "Hello from F#!"
let p = System.Diagnostics.Process.Start("./Rust.exe")
p.WaitForExit()
printfn "Goodbye from F#!"
