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
FOR    	for
WHILE   while
RETURN  return
VOID	void
INT 	int
ELSE    else
FLOAT  	float
LONG    long
DOUBLE  double
STRING_LITERAL \"([^"\\]*(\\[\nt"])*)*\"
INTEGER_CONSTANT	([0-9][0-9]*)|(0[bB][01]*)|(0[0-7]*)|(0[xX][0-9a-fA-F]*)
FLOAT_CONSTANT	(([0-9]*\.[0-9]+)|([0-9]+\.[0-9]*))(([eE][+-][0-9]*)|([eE][0-9]*))?
IDENTIFIER	[a-zA-Z_][a-zA-Z0-9_]*

%% 

{WHITESPACE}+	{}
{STRING_LITERAL} {return Parser::STRING_LITERAL;}
\(|\)	{return matched()[0];}
\{|\}	{return matched()[0];}
\[|\]	{return matched()[0];}
;	{return matched()[0];}
,	{return matched()[0];}
{ARITH_OP}	{return matched()[0];}
{INC_OP}	{return Parser::INC_OP;}
{DEC_OP}	{return Parser::DEC_OP;}
{OR_OP}		{return Parser::OR_OP;}
{AND_OP}	{return Parser::AND_OP;}
{LE_OP}		{return Parser::LE_OP;}
{GE_OP}		{return Parser::GE_OP;}
{NE_OP}		{return Parser::NE_OP;}
{EQ_OP}		{return Parser::EQ_OP;}
{IF}		{return Parser::IF;}
{ELSE}      {return Parser::ELSE;}
{FOR}		{return Parser::FOR;}
{WHILE}		{return Parser::WHILE;}
{RETURN}	{return Parser::RETURN;}
{VOID}		{return Parser::VOID;}
{INT}		{return Parser::INT;}
{FLOAT}		{return Parser::FLOAT;}
{LONG}		{return Parser::LONG;}
{DOUBLE}		{return Parser::DOUBLE;}
{INTEGER_CONSTANT}	{return Parser::INT_CONSTANT;}
{FLOAT_CONSTANT}	{return Parser::FLOAT_CONSTANT;}
{IDENTIFIER}	{return Parser::IDENTIFIER;}
. {return Parser::OTHERS;}

