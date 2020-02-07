package main

import (
    "os"
    "log"
    "fmt"
    "os/exec"
)

func main() {
    fmt.Printf("Hello from Go!\n")
    cmd := exec.Command("R", "--vanilla", "--slave", "-f", "r.r")
    cmd.Stdout = os.Stdout
    cmd.Stderr = os.Stderr
    if err := cmd.Run(); err != nil {
        log.Fatal(err)
    }
    fmt.Printf("Goodbye from Go!\n")
}
