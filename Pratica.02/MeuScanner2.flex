%cup
%class MeuScanner2
%unicode
%line
%column

id = [a-zA-Z_][a-zA-Z_0-9]*

%%

{ id }         { return new Symbol(sym.ID, yyline, yycolumn, yytext()); }
[0-9]+         { return new Symbol(sym.INTEIRO, yyline, yycolumn, Integer.valueOf(yytext())); }

"if"           { return new Symbol(sym.IF); }
"else"         { return new Symbol(sym.ELSE); }
"<"            { return new Symbol(sym.MENOR); }
"="            { return new Symbol(sym.ATRIB); }
";"            { return new Symbol(sym.PTVIRG); }
"("            { return new Symbol(sym.PARENTESQ); }
")"            { return new Symbol(sym.PARENTDIR); }

[ \t\r\n]+     { /* ignora */ }
.              { System.err.println("Caractere inválido: " + yytext()); return null; }
