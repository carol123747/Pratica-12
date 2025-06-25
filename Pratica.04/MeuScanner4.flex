import java_cup.runtime.Symbol;

%%

//diretivas 
%cup                              //CUP
%class MeuScanner4                //nome da classe 
%unicode                          //unicode
%line                             //linhas
%column                           //colunas

%%

//tokens 
\"             { return new Symbol(sym.ASPAS); }              // atributos
"<a"           { return new Symbol(sym.A_ABRE); }             // início de link
"</a>"         { return new Symbol(sym.A_FECHA); }            // fim de link
"<img"         { return new Symbol(sym.IMG); }                // imagem
"href"         { return new Symbol(sym.HREF); }               // href
"src"          { return new Symbol(sym.SRC); }                // src
"="            { return new Symbol(sym.ATRIB); }              // atribuição
"/> "          { return new Symbol(sym.FECHA_AUTOCOMPLETE); } // tag fechada automaticamente com espaço
">"            { return new Symbol(sym.FECHA_TAG); }          // fecha uma tag

//texto dentro das tags
[^\"<>]+       { return new Symbol(sym.TEXTO, yyline, yycolumn, yytext().trim()); }

//para ignorar espaços, quebra de linha
[ \t\r\n]+     { /* ignora */ }

//qualquer outro caractere
.              { System.err.println("Caractere inválido: " + yytext()); return null; }

