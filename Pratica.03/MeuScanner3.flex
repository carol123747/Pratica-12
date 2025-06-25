import java_cup.runtime.Symbol;

%%

// Diretivas:
%cup
%class MeuScanner3
%unicode
%line
%column

//macro
id = [a-zA-Z_][a-zA-Z_0-9]*

%%
// pra reconhecer os tokens
{id}          { return new Symbol(sym.ID, yyline, yycolumn, yytext()); }                             //identificador
[0-9]+        { return new Symbol(sym.INTEIRO, yyline, yycolumn, Integer.valueOf(yytext())); }       //numeros inteiros

"do"          { return new Symbol(sym.DO); }                                                        //do
"["           { return new Symbol(sym.COLCHESQ); }                                                  // colchete esquerdo
"]"           { return new Symbol(sym.COLCHDIR); }                                                  // colchete direito
"++"          { return new Symbol(sym.INC); }                                                       // incremento
"<"           { return new Symbol(sym.MENOR); }                                                     // menor
"="           { return new Symbol(sym.ATRIB); }                                                     // igual
"out"         { return new Symbol(sym.OUT); }                                                       // out
";"           { return new Symbol(sym.PTVIRG); }                                                    // ponto e virgula
"("           { return new Symbol(sym.PARENTESQ); }                                                 // parentese esquerdo
")"           { return new Symbol(sym.PARENTDIR); }                                                 // parentese direito

[ \t\r\n]+    { /* ignora */ }
.             { System.err.println("Caractere inválido: " + yytext()); return null; }               //tratamento de erros
