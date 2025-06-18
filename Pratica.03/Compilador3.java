import java.io.*;

public class Compilador3 {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new FileReader(args[0]));
        MeuParser3 parser = new MeuParser3(new MeuScanner3(reader));
        parser.parse();
        reader.close();
    }
}
