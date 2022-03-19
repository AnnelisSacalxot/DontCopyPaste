/*primera sección: código de usuario*/

package AnalizadoresNativos;

/*segunda sección: configuración*/

%%

%class DontCopyAndPaste
%standalone //crea un main en jflex
%unicode
%line
%column
%public
%full

//código/funciones
%{

%}

//tipo de variables

INTT = "int"
BOOLEANT = "boolean"
STRINGT = "String"
CHART = "char"
DOUBLET = "double"
OBJECTT = "Object"
VOIDT = "void"

//palabras reservadas

PUBLICA = "public"
PRIVATEA = "private"
PROTECTEDA = "protected"
FINALA = "final"

//sentencias de control

IFC = "if/If"
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
DOSBARRA = "//"

/*tercera sección: reglas léxicas*/

%%

{INTT}										{ System.out.printf("\nINTT (%s)", yytext()); }
{BOOLEANT}								    { System.out.printf("\nBOOLEANT (%s)", yytext()); }
{STRINGT}									{ System.out.printf("\nSTRINGT (%s)", yytext()); }
{CHART}									    { System.out.printf("\nCHART (%s)", yytext()); }
{DOUBLET}								    { System.out.printf("\nDOUBLET (%s)", yytext()); }
{OBJECTT}									{ System.out.printf("\nOBJECTT  (%s)", yytext()); }
{VOIDT}										{ System.out.printf("\nVOIDT (%s)", yytext()); }

{PUBLICA}									{ System.out.printf("\nPUBLICA (%s)", yytext()); }
{PRIVATEA}									{ System.out.printf("\nPRIVATEA (%s)", yytext()); }
{PROTECTEDA}								{ System.out.printf("\nPROTECTEDA (%s)", yytext()); }
{FINALA}								    { System.out.printf("\nFINALA (%s)", yytext()); }

{IFC}								        { System.out.printf("\nIFC (%s)", yytext()); }
{ELSEC}								        { System.out.printf("\nELSEC (%s)", yytext()); }
{FORC}								        { System.out.printf("\nFORC (%s)", yytext()); }
{WHILEC}								    { System.out.printf("\nWHILEC (%s)", yytext()); }
{DOWHILEC}								    { System.out.printf("\nDOWHILEC (%s)", yytext()); }
{SWITCHC}								    { System.out.printf("\nSWITCHC (%s)", yytext()); }

{BREAKS}								    { System.out.printf("\nBREAKS  (%s)", yytext()); }
{RETURNS}								    { System.out.printf("\nRETURNS (%s)", yytext()); }

{MAS}								        { System.out.printf("\nMAS (%s)", yytext()); }
{MENOS}								        { System.out.printf("\nMENOS (%s)", yytext()); }
{MULTIPLICACION}						    { System.out.printf("\nMULTIPLICACION (%s)", yytext()); }
{DIVISION}								    { System.out.printf("\nDIVISION (%s)", yytext()); }
{IGUAL}								        { System.out.printf("\nIGUAL (%s)", yytext()); }
{ESDISTINTO}								{ System.out.printf("\nESDISTINTO (%s)", yytext()); }
{Y}								            { System.out.printf("\nY (%s)", yytext()); }
{O}								            { System.out.printf("\nO (%s)", yytext()); }
{NO}								        { System.out.printf("\nNO (%s)", yytext()); }
{MAYOR}								        { System.out.printf("\nMAYOR (%s)", yytext()); }
{MAYORIGUAL}								{ System.out.printf("\nMAYORIGUAL (%s)", yytext()); }
{MENOR}								        { System.out.printf("\nMENOR (%s)", yytext()); }
{MENORIGUAL}								{ System.out.printf("\nMENORIGUAL (%s)", yytext()); }

{PARENTESISABRE}							{ System.out.printf("\nPARENTESISABRE (%s)", yytext()); }
{PARENTESISCIERRA}							{ System.out.printf("\nPARENTESISCIERRA (%s)", yytext()); }
{LLAVEABRE}								    { System.out.printf("\nLLAVEABRE (%s)", yytext()); }
{LLAVECIERRA}								{ System.out.printf("\nLLAVECIERRA  (%s)", yytext()); }
{CORCHETEABRE}								{ System.out.printf("\nCORCHETEABRE (%s)", yytext()); }
{CORCHETECIERRA}							{ System.out.printf("\nCORCHETECIERRA (%s)", yytext()); }

{PUNTOCOMA}							        { System.out.printf("\nPUNTOCOMA (%s)", yytext()); }
{PUNTO}							            { System.out.printf("\nPUNTO (%s)", yytext()); }
{DOSBARRA}							        { System.out.printf("\nDOSBARRA  (%s)", yytext()); }



[^]                     {}