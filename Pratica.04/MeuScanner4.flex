%cup
%class MeuScanner4
%unicode
%line
%column

%%

\"            { return new Symbol(sym.ASPAS); }
"<a"          { return new Symbol(sym.A_ABRE); }
"</a>"        { return new Symbol(sym.A_FECHA); }
"<img"        { return new Symbol(sym.IMG); }
"href"        { return new Symbol(sym.HREF); }
"src"         { return new Symbol(sym.SRC); }
"="           { return new Symbol(sym.ATRIB); }
"/> "         { return new Symbol(sym.FECHA_AUTOCOMPLETE); }
">"           { return new Symbol(sym.FECHA_TAG); }

[^\"<>]+      { return new Symbol(sym.TEXTO, yyline, yycolumn, yytext()); }

[ \t\r\n]+    { /* ignora */ }
.             { System.err.println("Caractere inválido: " + yytext()); return null; }
