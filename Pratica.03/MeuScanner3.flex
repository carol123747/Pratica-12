%cup
%class MeuScanner3
%unicode
%line
%column

id = [a-zA-Z_][a-zA-Z_0-9]*

%%

{id}          { return new Symbol(sym.ID, yyline, yycolumn, yytext()); }
[0-9]+        { return new Symbol(sym.INTEIRO, yyline, yycolumn, Integer.valueOf(yytext())); }

"do"          { return new Symbol(sym.DO); }
"["           { return new Symbol(sym.COLCHESQ); }
"]"           { return new Symbol(sym.COLCHDIR); }
"++"          { return new Symbol(sym.INC); }
"<"           { return new Symbol(sym.MENOR); }
"="           { return new Symbol(sym.ATRIB); }
"out"         { return new Symbol(sym.OUT); }
";"           { return new Symbol(sym.PTVIRG); }
"("           { return new Symbol(sym.PARENTESQ); }
")"           { return new Symbol(sym.PARENTDIR); }

[ \t\r\n]+    { /* ignora */ }
.             { System.err.println("Caractere inválido: " + yytext()); return null; }
