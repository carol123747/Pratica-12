import java.io.*;

public class Compilador1 {
    public static void main(String[] args) throws Exception {
        BufferedReader reader = new BufferedReader(new FileReader(args[0]));
        MeuParser1 parser = new MeuParser1(new MeuScanner1(reader));
        parser.parse();
        reader.close();
    }
}

