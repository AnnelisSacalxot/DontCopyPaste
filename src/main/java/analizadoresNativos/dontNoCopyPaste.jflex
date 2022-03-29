/*primera sección: código de usuario*/

package analizadoresNativos;
import java_cup.runtime.Symbol;
import java_cup.runtime.*;

/*segunda sección: configuración*/

%%

%class DontCopyAndPaste
%standalone //crea un main en jflex
%unicode
%line
%column
%public
%full
%cup

//aqui van los estados con los que se definen algunos de los tokens para el reconocimiento
%state COMENTARIO_SIMPLE
%state COMENTARIO_BLOQUE

//código/funciones
%{


      private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
      }
      private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
      }

      private void error(String message) {
        System.out.println("Error en linea: "+(yyline+1)+", columna "+(yycolumn+1)+" : "+message);
      }

%}

//palabras reservadas

PUBLICA = "public"
PRIVATEA = "private"
PROTECTEDA = "protected"
FINALA = "final"
THISA = "this"
IMPORTA = "import"
INTEGERA = "Intefer"

//expresiones regulares
ID = [a-z,A-Z][a-z,A-Z0-9]*
CADENA = [a-zA-Z]+
ENTERO = [0-9]+
DECIMAL = [0-9]+[.][0-9]+
ESPACIO = "" , "\n" , "\t" , "\r"

//tipo de variables

INTT = "int"
BOOLEANT = "boolean"
STRINGT = "String"
CHART = "char"
DOUBLET = "double"
OBJECTT = "Object"
VOIDT = "void"
CLASST = "class"

//sentencias de control

IFC = "if"|"If"
ELSEC = "else"
FORC = "for"
WHILEC = "while"
DOWHILEC = "do while"
SWITCHC = "switch"

//sentencia salida

BREAKS = "Break"
RETURNS = "return"

//operadores aritmeticos

MAS = "+"
MENOS = "-"
MULTIPLICACION = "*"
DIVISION = "/"
IGUAL = "=="
ESDISTINTO = "!="
Y = "&&"
O = "||"
NO = "!"
MAYOR = ">"
MAYORIGUAL = ">="
MENOR = "<"
MENORIGUAL = "<="

//apertura y cierre de cadena

PARENTESISABRE = "("
PARENTESISCIERRA = ")"
LLAVEABRE = "{"
LLAVECIERRA = "}"
CORCHETEABRE = "["
CORCHETECIERRA = "]"

//signos de puntuación

PUNTOCOMA = ";"
PUNTO = "."
IN_COMENTARIO_SIMPLE = "//"
IN_COMENTARIO_BLOQUE = "/*"
FIN_COMENTARIO_BLOQUE = "*/"

/*tercera sección: reglas léxicas*/

%%
{PUBLICA}									{ return new Symbol(sym.PUBLICA, yyline + 1, yycolumn + 1, yytext()); }
{PRIVATEA}									{ return new Symbol(sym.PRIVATEA, yyline + 1, yycolumn + 1, yytext()); }
{PROTECTEDA}								{ return new Symbol(sym.PROTECTEDA, yyline + 1, yycolumn + 1, yytext()); }
{FINALA}								    { return new Symbol(sym.FINALA, yyline + 1, yycolumn + 1, yytext()); }
{THISA}                                     { return new Symbol(sym.THISA, yyline + 1, yycolumn + 1, yytext()); }
{IMPORTA}                                   { return new Symbol(sym.IMPORTA, yyline + 1, yycolumn + 1, yytext()); }
{INTEGERA}                                  { return new Symbol(sym.INTEGERA, yyline + 1, yycolumn + 1, yytext()); }

{ID}									    { return new Symbol(sym.ID, yyline + 1, yycolumn + 1, yytext()); }
{CADENA}                                    { return new Symbol(sym.CADENA, yyline + 1, yycolumn + 1, yytext()); }
{ENTERO}									{ return new Symbol(sym.ENTERO, yyline + 1, yycolumn + 1, yytext()); }
{DECIMAL}									{ return new Symbol(sym.DECIMAL, yyline + 1, yycolumn + 1, yytext()); }
//{COMENTARIO}							    { return new Symbol(sym.COMENTARIO, yyline + 1, yycolumn + 1, yytext()); }
{ESPACIO}									{ return new Symbol(sym.ESPACIO, yyline + 1, yycolumn + 1, yytext()); }

{INTT}										{ return new Symbol(sym.INITT, yyline + 1, yycolumn + 1, yytext()); }
{BOOLEANT}								    { return new Symbol(sym.BOOLEANT, yyline + 1, yycolumn + 1, yytext()); }
{STRINGT}									{ return new Symbol(sym.STRINGT, yyline + 1, yycolumn + 1, yytext()); }
{CHART}									    { return new Symbol(sym.CHART, yyline + 1, yycolumn + 1, yytext()); }
{DOUBLET}								    { return new Symbol(sym.DOUBLET, yyline + 1, yycolumn + 1, yytext()); }
{OBJECTT}									{ return new Symbol(sym.OBJECTT, yyline + 1, yycolumn + 1, yytext()); }
{VOIDT}										{ return new Symbol(sym.VOIDT, yyline + 1, yycolumn + 1, yytext()); }
{CLASST}                                    { return new Symbol(sym.CLASST, yyline + 1, yycolumn + 1, yytext());) }

{IFC}								        { return new Symbol(sym.IFC, yyline + 1, yycolumn + 1, yytext()); }
{ELSEC}								        { return new Symbol(sym.ELSEC, yyline + 1, yycolumn + 1, yytext()); }
{FORC}								        { return new Symbol(sym.FORC, yyline + 1, yycolumn + 1, yytext()); }
{WHILEC}								    { return new Symbol(sym.WHILEC, yyline + 1, yycolumn + 1, yytext()); }
{DOWHILEC}								    { return new Symbol(sym.DOWHILEC, yyline + 1, yycolumn + 1, yytext()); }
{SWITCHC}								    { return new Symbol(sym.SWITCHC, yyline + 1, yycolumn + 1, yytext()); }

{BREAKS}								    { return new Symbol(sym.BREAKS, yyline + 1, yycolumn + 1, yytext()); }
{RETURNS}								    { return new Symbol(sym.RETURNS, yyline + 1, yycolumn + 1, yytext()); }

{MAS}								        { return new Symbol(sym.MAS, yyline + 1, yycolumn + 1, yytext()); }
{MENOS}								        { return new Symbol(sym.MENOS, yyline + 1, yycolumn + 1, yytext()); }
{MULTIPLICACION}						    { return new Symbol(sym.MULTIPLICACION, yyline + 1, yycolumn + 1, yytext()); }
{DIVISION}								    { return new Symbol(sym.DIVISION, yyline + 1, yycolumn + 1, yytext()); }
{IGUAL}								        { return new Symbol(sym.IGUAL, yyline + 1, yycolumn + 1, yytext()); }
{ESDISTINTO}								{ return new Symbol(sym.ESDISTINTO, yyline + 1, yycolumn + 1, yytext()); }
{Y}								            { return new Symbol(sym.Y, yyline + 1, yycolumn + 1, yytext()); }
{O}								            { return new Symbol(sym.0, yyline + 1, yycolumn + 1, yytext()); }
{NO}								        { return new Symbol(sym.NO, yyline + 1, yycolumn + 1, yytext()); }
{MAYOR}								        { return new Symbol(sym.MAYOR, yyline + 1, yycolumn + 1, yytext()); }
{MAYORIGUAL}								{ return new Symbol(sym.MAYORIGUAL, yyline + 1, yycolumn + 1, yytext()); }
{MENOR}								        { return new Symbol(sym.MENOR, yyline + 1, yycolumn + 1, yytext()); }
{MENORIGUAL}								{ return new Symbol(sym.MENORIGUAL, yyline + 1, yycolumn + 1, yytext()); }

{PARENTESISABRE}							{ return new Symbol(sym.PARENTENSISABRE, yyline + 1, yycolumn + 1, yytext()); }
{PARENTESISCIERRA}							{ return new Symbol(sym.PARENTESISCIERRA, yyline + 1, yycolumn + 1, yytext()); }
{LLAVEABRE}								    { return new Symbol(sym.LLAVEABRE, yyline + 1, yycolumn + 1, yytext()); }
{LLAVECIERRA}								{ return new Symbol(sym.LLAVECIERRA, yyline + 1, yycolumn + 1, yytext()); }
{CORCHETEABRE}								{ return new Symbol(sym.CORCHETEABRE, yyline + 1, yycolumn + 1, yytext()); }
{CORCHETECIERRA}							{ return new Symbol(sym.CORCHETECIERRA, yyline + 1, yycolumn + 1, yytext()); }

{PUNTOCOMA}							        { return new Symbol(sym.PUNTOCOMA, yyline + 1, yycolumn + 1, yytext()); }
{PUNTO}							            { return new Symbol(sym.PUNTO, yyline + 1, yycolumn + 1, yytext()); }

//con los tokens que van armados con estados

//comentario simple
<YYINITIAL> {
{IN_COMENTARIO_SIMPLE} {yybeging(COMENTARIO_SIMPLE);}
}

<COMENTARIO_SIMPLE> {
    ("\n") {yybegin(YYINITIAL);}
    [^] {}
}

//bloque de comentario
<YYINITIAL> {
{IN_COMENTARIO_BLOQUE} {yybeging(COMENTARIO_BLOQUE);}
}

<COMENTARIO_BLOQUE> {
    {FIN_COMENTARIO_BLOQUE} {yybegin(YYINITIAL);}
    [^] {}
}

//en caso de que de error

[^]                                         {error("Simbolo invalido <"+ yytext()+">");}
<<EOF>>                                     { return symbol(sym.EOF); }
