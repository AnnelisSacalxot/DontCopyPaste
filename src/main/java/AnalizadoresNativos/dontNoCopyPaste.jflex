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

//palabras reservadas

PUBLICA = "public"
PRIVATEA = "private"
PROTECTEDA = "protected"
FINALA = "final"
THISA = "this"
IMPORTA = "import"

//expresiones regulares
//ID = [a-zA-Z][a-zA-Z | 0-9]*
ENTERO = [0-9]+
DECIMAL = [0-9]+[.][0-9]+
ESPACIO = [ , \n, \t, \r]+

//tipo de variables

INTT = "int"
BOOLEANT = "boolean"
STRINGT = "String"
CHART = "char"
DOUBLET = "double"
OBJECTT = "Object"
VOIDT = "void"

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
DOSBARRA = "//"

/*tercera sección: reglas léxicas*/

%%
{PUBLICA}									{ System.out.printf("\nPUBLICA (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{PRIVATEA}									{ System.out.printf("\nPRIVATEA (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{PROTECTEDA}								{ System.out.printf("\nPROTECTEDA (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{FINALA}								    { System.out.printf("\nFINALA (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{THISA}                                     { System.out.printf("\nTHISA (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{IMPORTA}                                   { System.out.printf("\nIMPORTA (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }

//{ID}									    { System.out.printf("\nID (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{ENTERO}									{ System.out.printf("\nENTERO (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{DECIMAL}									{ System.out.printf("\nDECIMAL (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{ESPACIO}									{ System.out.printf("\nESPACIO (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }

{INTT}										{ System.out.printf("\nINTT (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{BOOLEANT}								    { System.out.printf("\nBOOLEANT (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{STRINGT}									{ System.out.printf("\nSTRINGT (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{CHART}									    { System.out.printf("\nCHART (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{DOUBLET}								    { System.out.printf("\nDOUBLET (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{OBJECTT}									{ System.out.printf("\nOBJECTT  (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }
{VOIDT}										{ System.out.printf("\nVOIDT (%s)", yytext() +" en linea: "+yyline+" columna: "+yycolumn); }

{IFC}								        { System.out.printf("\nIFC (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{ELSEC}								        { System.out.printf("\nELSEC (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{FORC}								        { System.out.printf("\nFORC (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{WHILEC}								    { System.out.printf("\nWHILEC (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{DOWHILEC}								    { System.out.printf("\nDOWHILEC (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{SWITCHC}								    { System.out.printf("\nSWITCHC (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }

{BREAKS}								    { System.out.printf("\nBREAKS  (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{RETURNS}								    { System.out.printf("\nRETURNS (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }

{MAS}								        { System.out.printf("\nMAS (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{MENOS}								        { System.out.printf("\nMENOS (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{MULTIPLICACION}						    { System.out.printf("\nMULTIPLICACION (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{DIVISION}								    { System.out.printf("\nDIVISION (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{IGUAL}								        { System.out.printf("\nIGUAL (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{ESDISTINTO}								{ System.out.printf("\nESDISTINTO (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{Y}								            { System.out.printf("\nY (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{O}								            { System.out.printf("\nO (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{NO}								        { System.out.printf("\nNO (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{MAYOR}								        { System.out.printf("\nMAYOR (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{MAYORIGUAL}								{ System.out.printf("\nMAYORIGUAL (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{MENOR}								        { System.out.printf("\nMENOR (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{MENORIGUAL}								{ System.out.printf("\nMENORIGUAL (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }

{PARENTESISABRE}							{ System.out.printf("\nPARENTESISABRE (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{PARENTESISCIERRA}							{ System.out.printf("\nPARENTESISCIERRA (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{LLAVEABRE}								    { System.out.printf("\nLLAVEABRE (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{LLAVECIERRA}								{ System.out.printf("\nLLAVECIERRA  (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{CORCHETEABRE}								{ System.out.printf("\nCORCHETEABRE (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{CORCHETECIERRA}							{ System.out.printf("\nCORCHETECIERRA (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }

{PUNTOCOMA}							        { System.out.printf("\nPUNTOCOMA (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{PUNTO}							            { System.out.printf("\nPUNTO (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }
{DOSBARRA}							        { System.out.printf("\nDOSBARRA  (%s)", yytext()+" en linea: "+yyline+" columna: "+yycolumn); }



[^]                     {}
