
%option main
%option nodefault

LineTerm [\r\n]|\r\n
AnyChar [^\r\n]

InputStream {Token}|{NotToken}
NotToken {Comment}|{Space}

Comment "//"{AnyChar}*|"/*"({AnyChar}|{LineTerm})*"*/"
Token {Identifier}|{Keyword}|{Separator}|{Oprator}|{Literal}
Literal {StringValues}|{IntegerValues}|{FloatPointValues}|{BooleanValues}|{CharValues}|{Null}

Space [ \t\f]|{LineTerm}
Keyword "int"|"if"|"public"|"class"|"abstract"|"switch"|"case"|"else"|"extends"|"final"|"try"|"catch"|"finally"|"static"|"final"|"boolean"|"break"|"byte"|"char"|"continue"|"default"|"do"|"double"|"enum"|"float"|"for"|"implements"|"import"|"instanceof"|"interface"|"long"|"new"|"Package"|"Private"|"protected"|"return"|"short"|"super"|"synchronized"|"this"|"throw"|"throws"|"void"|"volatile"|"goto"|"while"|"const"|"transient"|"strictfp"

BooleanValues "true"|"false"
Null "null"

Identifier {IdentifierStartWith}{IdentifierRest} 
IdentifierStartWith [A-Za-z]|"_"
IdentifierRest ({IdentifierStartWith}|[0-9])*

Separator [.;{}()[\],@]|"::"|"\\"

IntegerValues [0-9]*
FloatPointValues ({IntegerValues}*\.{IntegerValues}*)|({IntegerValues}*\.)

CharValues \'{AnyChar}\'

StringValues \"([ \t\f]|{AnyChar})*\"|{TextBlock}
TextBlock \"\"\"{Space}*({AnyChar}|{LineTerm})*\"\"\"

Oprator [=><!~?:+*^%|&-]|"/"|"->"|"=="|">="|"<="|"!="|"&&"|"||"|"++"|"--"|"<<"|">>"|">>>"|"+="|"-="|"*="|"/="|"&="|"|="|"^="|"%="|"<<="|">>="|">>>="

%%

	// Rules
{NotToken} { }
{Keyword} { printf("keyword: %s\n", yytext); }
{Identifier} { printf("identifier: %s\n", yytext);  }
{Separator} { printf("separator: %s\n", yytext); }
{Literal} { printf("Literal: %s\n", yytext); }
{Oprator} { printf("oprator: %s\n", yytext); }
. { printf("unknown: %s\n",yytext);}

%%

// User code

