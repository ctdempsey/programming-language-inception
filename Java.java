import java.lang.ProcessBuilder;

public class Java {

    public static void main(String[] args) {
        System.out.println("Hello from Java!");
        try {
            Process p = new ProcessBuilder().command("./c.exe").inheritIO().start();
            int exitCode = p.waitFor();
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(1);
        }
        System.out.println("Goodbye from Java!");
    }
}