import java.io.*;

public class Compilador2 {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new FileReader(args[0]));
        MeuParser2 parser = new MeuParser2(new MeuScanner2(reader));
        parser.parse();
        reader.close();
    }
}
