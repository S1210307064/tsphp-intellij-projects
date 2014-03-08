import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.debug.DebugEventSocketProxy;

import ch.tsphp.parser.antlr.*;
import ch.tsphp.parser.*;
import ch.tsphp.common.*;


public class __Test__ {

    public static void main(String args[]) throws Exception {
        TSPHPLexer lex = new TSPHPLexer(new ANTLRFileStream("D:\\\\TSPHP-parser\\\\antlr\\\\output\\\\__Test___input.txt", "UTF8"));
        CommonTokenStream tokens = new CommonTokenStream(lex);

        TSPHPParser parser = new TSPHPParser(tokens, 49100, null);
        parser.setTreeAdaptor(new TSPHPAstAdaptor());
        try {
            parser.compilationUnit();
        } catch (RecognitionException e) {
            e.printStackTrace();
        }
    }
}