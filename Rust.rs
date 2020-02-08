use std::process::Command;

fn main() {
    println!("Hello from Rust!");
    let status = Command::new("./cobol.exe").status();
    println!("Goodbye from Rust!");
}
