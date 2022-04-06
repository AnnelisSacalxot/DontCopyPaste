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

PUBLICR = "public"
PRIVATER = "private"
PROTECTEDR = "protected"
FINALR = "final"
THISR = "this"
IMPORTR = "import"
INTEGERR = "Intefer"

//tipo de variables

VOIDTV = "void"
CLASSTV = "class"
INTTV = "int"
BOOLEANTV = "boolean"
STRINGTV = "String"
CHARTV = "char"
DOUBLETV = "double"
OBJECTTV = "Object"


//expresiones regulares
CADENA = [a-zA-Z]+
ENTERO = [0-9]+
DECIMAL = [0-9]+[.][0-9]+
ESPACIO = "" , "\n" , "\t" , "\r"

//sentencias de control

IFCC = "if"|"If"
ELSECC = "else"
FORCC = "for"
WHILECC = "while"
DOWHILECC = "do while"
SWITCHCC = "switch"

//sentencia salida

BREAKSA = "Break"
RETURNSA = "return"

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


//reglas de produccion
ID = ({CADENA})({CADENA} | {ENTERO})*

/*tercera sección: reglas léxicas*/

%%
{PUBLICR}									{ return new Symbol(sym.PUBLICR, yyline + 1, yycolumn + 1, yytext()); }
{PRIVATER}									{ return new Symbol(sym.PRIVATER, yyline + 1, yycolumn + 1, yytext()); }
{PROTECTEDR}								{ return new Symbol(sym.PROTECTEDR, yyline + 1, yycolumn + 1, yytext()); }
{FINALR}								    { return new Symbol(sym.FINALR, yyline + 1, yycolumn + 1, yytext()); }
{THISR}                                     { return new Symbol(sym.THISR, yyline + 1, yycolumn + 1, yytext()); }
{IMPORTR}                                   { return new Symbol(sym.IMPORTR, yyline + 1, yycolumn + 1, yytext()); }
{INTEGERR}                                  { return new Symbol(sym.INTEGERR, yyline + 1, yycolumn + 1, yytext()); }

{VOIDTV}									{ return new Symbol(sym.VOIDTV, yyline + 1, yycolumn + 1, yytext()); }
{CLASSTV }                                  { return new Symbol(sym.CLASSTV , yyline + 1, yycolumn + 1, yytext());) }
{INTTV}										{ return new Symbol(sym.INITTV, yyline + 1, yycolumn + 1, yytext()); }
{BOOLEANTV}								    { return new Symbol(sym.BOOLEANTV, yyline + 1, yycolumn + 1, yytext()); }
{STRINGTV}									{ return new Symbol(sym.STRINGTV, yyline + 1, yycolumn + 1, yytext()); }
{CHARTV}									{ return new Symbol(sym.CHARTV, yyline + 1, yycolumn + 1, yytext()); }
{DOUBLETV}								    { return new Symbol(sym.DOUBLETV, yyline + 1, yycolumn + 1, yytext()); }
{OBJECTTV}									{ return new Symbol(sym.OBJECTTV, yyline + 1, yycolumn + 1, yytext()); }


{CADENA}                                    { return new Symbol(sym.CADENA, yyline + 1, yycolumn + 1, yytext()); }
{ENTERO}									{ return new Symbol(sym.ENTERO, yyline + 1, yycolumn + 1, yytext()); }
{DECIMAL}									{ return new Symbol(sym.DECIMAL, yyline + 1, yycolumn + 1, yytext()); }
//{COMENTARIO}							    { return new Symbol(sym.COMENTARIO, yyline + 1, yycolumn + 1, yytext()); }
{ESPACIO}									{ return new Symbol(sym.ESPACIO, yyline + 1, yycolumn + 1, yytext()); }

{IFCC}								        { return new Symbol(sym.IFCC, yyline + 1, yycolumn + 1, yytext()); }
{ELSECC}								        { return new Symbol(sym.ELSECC, yyline + 1, yycolumn + 1, yytext()); }
{FORCC}								        { return new Symbol(sym.FORCC, yyline + 1, yycolumn + 1, yytext()); }
{WHILECC}								    { return new Symbol(sym.WHILECC, yyline + 1, yycolumn + 1, yytext()); }
{DOWHILECC}								    { return new Symbol(sym.DOWHILECC, yyline + 1, yycolumn + 1, yytext()); }
{SWITCHCC}								    { return new Symbol(sym.SWITCHCC, yyline + 1, yycolumn + 1, yytext()); }

{BREAKSA}								    { return new Symbol(sym.BREAKSA, yyline + 1, yycolumn + 1, yytext()); }
{RETURNSA}								    { return new Symbol(sym.RETURNSA, yyline + 1, yycolumn + 1, yytext()); }

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

{ID}                        			    { return new Symbol(sym.ID, yyline + 1, yycolumn + 1, yytext()); }

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
