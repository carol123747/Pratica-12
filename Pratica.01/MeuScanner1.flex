%cup
%class MeuScanner1
%unicode
%line
%column

digit = [0-9]
int = {digit}+

%%

{int}       { return new Symbol(sym.INTEIRO, yyline, yycolumn, Integer.valueOf(yytext())); }
"+"         { return new Symbol(sym.MAIS); }
"-"         { return new Symbol(sym.MENOS); }
"*"         { return new Symbol(sym.MULT); }
"/"         { return new Symbol(sym.DIV); }
"%"         { return new Symbol(sym.RESTO); }
"^"         { return new Symbol(sym.POT); }
"("         { return new Symbol(sym.PARENTESQ); }
")"         { return new Symbol(sym.PARENTDIR); }
";"         { return new Symbol(sym.PTVIRG); }

[ \t\r\n]+  { /* ignora */ }
.           { System.err.println("Caractere inválido: " + yytext()); return null; }
