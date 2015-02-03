WHITESPACE	[ \n\t]
ARITH_OP	[+-/*!<>=]
INC_OP	\+\+
DEC_OP  \-\-
OR_OP	\|\|
AND_OP  &&
LE_OP	\<\=
GE_OP   \>\=
EQ_OP   \=\=
NE_OP   \!\=
IF	    if
ELSE    else
FOR    	for
WHILE   while
RETURN  return
VOID	void
INT 	int
FLOAT  	float
LONG    long
DOUBLE  double
STRING_LITERAL	\"([^"\\]*((\\\")|(\\[^"]))*)*\"
INTEGER_CONSTANT	([0-9][0-9]*)|(0[bB][01]*)|(0[0-7]*)|(0[xX][0-9a-fA-F]*)
FLOAT_CONSTANT	(([0-9]*\.[0-9]+)|([0-9]+\.[0-9]*))(([eE][+-][0-9]*)|([eE][0-9]*))?
IDENTIFIER	[a-zA-Z_][a-zA-Z0-9_]*

%% 

{WHITESPACE}+	{}
{STRING_LITERAL} {return STRING_LITERAL;}
\(|\)	{return matched()[0];}
\{|\}	{return matched()[0];}
\[|\]	{return matched()[0];}
;	{return matched()[0];}
,	{return matched()[0];}
{ARITH_OP}	{return matched()[0];}
{INC_OP}	{return INC_OP;}
{DEC_OP}	{return DEC_OP;}
{OR_OP}		{return OR_OP;}
{AND_OP}	{return AND_OP;}
{LE_OP}		{return LE_OP;}
{GE_OP}		{return GE_OP;}
{NE_OP}		{return NE_OP;}
{EQ_OP}		{return EQ_OP;}
{IF}		{return IF;}
{ELSE}      {return ELSE;}
{FOR}		{return FOR;}
{WHILE}		{return WHILE;}
{RETURN}	{return RETURN;}
{VOID}		{return VOID;}
{INT}		{return INT;}
{FLOAT}		{return FLOAT;}
{LONG}		{return LONG;}
{DOUBLE}		{return DOUBLE;}
{INTEGER_CONSTANT}	{return INTEGER_CONSTANT;}
{FLOAT_CONSTANT}	{return FLOAT_CONSTANT;}
{IDENTIFIER}	{return IDENTIFIER;}
. {return OTHERS;}
