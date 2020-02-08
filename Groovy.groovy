class Groovy {
   static void main(String[] args) {
      print('Hello from Groovy!');
      Process p = new ProcessBuilder().command("mono", "FSharp.exe").inheritIO().start();
      int exitCode = p.waitFor();
      print('Goodbye from Groovy!');
   }
}
