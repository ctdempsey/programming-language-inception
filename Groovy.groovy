class Groovy {
   static void main(String[] args) {
      println('Hello from Groovy!');
      Process p = new ProcessBuilder().command("mono", "FSharp.exe").inheritIO().start();
      int exitCode = p.waitFor();
      println('Goodbye from Groovy!');
   }
}
