fun main(args: Array<String>) {
    println("Hello from Kotlin!")
    ProcessBuilder("lua", "lua.lua").inheritIO().start().waitFor();
    println("Goodbye from Kotlin!")
}
