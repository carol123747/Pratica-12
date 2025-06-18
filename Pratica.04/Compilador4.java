import java.io.*;

public class Compilador4 {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new FileReader(args[0]));
        MeuParser4 parser = new MeuParser4(new MeuScanner4(reader));
        parser.parse();
        reader.close();
    }
}
