%scanner Scanner.h
%scanner-token-function d_scanner.lex()

%token INT FLOAT DOUBLE LONG IDENTIFIER INT_CONSTANT FLOAT_CONSTANT RETURN STRING_LITERAL IF ELSE WHILE FOR VOID OTHERS DEC_OP INC_OP
%left GE_OP LE_OP
%left NE_OP EQ_OP
%left AND_OP
%left OR_OP

%%
translation_unit
	: function_definition
	{
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"translation_unit\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| translation_unit function_definition
	{
		
		
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"translation_unit\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
   		std::cout<<$$<<" -> "<<$2<<";"<<std::endl;		
	}
	;

function_definition
	: type_specifier fun_declarator compound_statement
	{
		
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"function_definition\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$2<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;		
	}
	;

type_specifier
	: VOID
	{
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"type_specifier\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"VOID\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
	| INT
	{
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"type_specifier\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"INT\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
	| FLOAT
	{
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"type_specifier\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"FLOAT\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
	;

fun_declarator
	: IDENTIFIER '(' parameter_list ')'
	{
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"fun_declarator\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"IDENTIFIER\"];"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"(\"];"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\")\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<count-2<<";"<<std::endl;
		std::cout<<$$<<" -> "<<count-1<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
	| IDENTIFIER '(' ')'
	{
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"fun_declarator\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"IDENTIFIER\"];"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"(\"];"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\")\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count-2<<";"<<std::endl;
		std::cout<<$$<<" -> "<<count-1<<";"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
	;

parameter_list
	: parameter_declaration
	{
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"parameter_list\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| parameter_list ',' parameter_declaration
	{
		
		
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"parameter_list\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		
		std::cout<<count<<" "<<"[label=\",\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;		
	}
	;

parameter_declaration
	: type_specifier declarator
	{
		
		
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"parameter_declaration\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$2<<";"<<std::endl;		
	}
	;

declarator
	: IDENTIFIER
	
    {
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"declarator\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"IDENTIFIER\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
	| declarator '[' constant_expression ']'
		{
		
		
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"declarator\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"[\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		count++;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
		std::cout<<count<<" "<<"[label=\"]\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;			
	}
	;

constant_expression
        : INT_CONSTANT
    {
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"constant_expression\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"INT_CONSTANT\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
        | FLOAT_CONSTANT
    {
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"constant_expression\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"FLOAT_CONSTANT\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
        ;

compound_statement
	: '{' '}'
	{
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"compund_statement\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"{\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"}\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
				
	}
	| '{' statement_list '}'
		{
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"compound_statement\"];"<<std::endl;
		
		
		count++;
		std::cout<<count<<" "<<"[label=\"{\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		count++;
		std::cout<<$$<<" -> "<<$2<<";"<<std::endl;
		std::cout<<count<<" "<<"[label=\"}\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;

	}
        | '{' declaration_list statement_list '}'
        {
		
		
		
		
		count++;
		$$=count;
		//
		std::cout<<count<<" "<<"[label=\"compound_statement\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"{\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		count++;
		std::cout<<$$<<" -> "<<$2<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
		std::cout<<count<<" "<<"[label=\"}\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
   	}
	;

statement_list
	: statement
	{
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"statement_list\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| statement_list statement
	{
		
		
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"statement_list\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$2<<";"<<std::endl;		
	}
	;

statement
        : compound_statement
    {
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"statement\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| selection_statement
	{
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"statement\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| iteration_statement
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"statement\"];"<<std::endl;
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| assignment_statement
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"statement\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
        | RETURN expression ';'
        	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"statement\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"RETURN\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$2<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\";\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
				
	}
	;

assignment_statement
	: ';'
	{
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"assignment_statement\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\";\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
	|  l_expression '=' expression ';'
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"assignment__statement\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"=\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\";\"];"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
				
	}
	;

expression
	: logical_and_expression
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| expression OR_OP logical_and_expression
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"OR_OP\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	;

logical_and_expression
	: equality_expression
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"logical_and_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| logical_and_expression AND_OP equality_expression
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"logical_and_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"AND_OP\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	;

equality_expression
	: relational_expression
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"equality_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| equality_expression EQ_OP relational_expression
		{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"equality_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"EQ_OP\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	| equality_expression NE_OP relational_expression
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"equality_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"NE_OP\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	;
relational_expression
	: additive_expression
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"relational_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| relational_expression '<' additive_expression
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"relational_expression\"];"<<std::endl;
	
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"<\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	| relational_expression '>' additive_expression
	
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"relational_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\">\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	| relational_expression LE_OP additive_expression
	
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"relational_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"LE_OP\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	| relational_expression GE_OP additive_expression
	
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"relational_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"GE_OP\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	;

additive_expression
	: multiplicative_expression
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"additive_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| additive_expression '+' multiplicative_expression
	
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"additive_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"+\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	| additive_expression '-' multiplicative_expression
	
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"additive_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"-\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	;

multiplicative_expression
	: unary_expression
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"multiplicative_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| multiplicative_expression '*' unary_expression
	
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"multiplicative_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"*\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	| multiplicative_expression '/' unary_expression
	
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"multiplicative_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"/\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	;
unary_expression
	: postfix_expression
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"unary_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| unary_operator postfix_expression
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"unary_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$2<<";"<<std::endl;
	}
	;

postfix_expression
	: primary_expression
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"postfix_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| IDENTIFIER '(' ')'
	{
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"postfix_expression\"];"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"<IDENTIFIER\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"(\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\")\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		
	}
	| IDENTIFIER '(' expression_list ')'
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"postfix_expression\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"IDENTIFIER\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"(\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\")\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;				
	}
	| l_expression INC_OP
		{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"postfix_expression\"];"<<std::endl;
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"INC_OP\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;			
	}
	;

primary_expression
	: l_expression
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"primary_expression\"];"<<std::endl;
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
	}
	| l_expression '=' expression
		{
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"primary_expression\"];"<<std::endl;
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"=\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
	} 
	| INT_CONSTANT
    {
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"primary_expression\"];"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"INT_CONSTANT\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
	| FLOAT_CONSTANT
    {
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"primary_expression\"];"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"FLOAT_CONSTANT\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
    | STRING_LITERAL
    {
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"primary_expression\"];"<<std::endl;
		$$=count;
		count++;
		std::cout<<count<<" "<<"[label=\"STRING_LITERAL\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
	| '(' expression ')'
	{
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"primary_expression\"];"<<std::endl;
	
		count++;
		std::cout<<count<<" "<<"[label=\"(\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$2<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\")\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
				
	}
	;

l_expression
        : IDENTIFIER
        {
			count++;$$=count;
			std::cout<<count<<" "<<"[label=\"l_expression\"];"<<std::endl;
			
			count++;
			std::cout<<count<<" "<<"[label=\"IDENTIFIER\"];"<<std::endl;
			std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
		}
		
        | l_expression '[' expression ']'
      {
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"l_expression\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"[\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"]\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
	} 
        ;

expression_list
        : expression
        {
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"expression_list\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		}
        | expression_list ',' expression
        {
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"expression_list\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\",\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
        ;

unary_operator
    : '-'
    {
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"unary_operator\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"-\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
	| '!'
    {
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"unary_operator\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"!\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;		
	}
	;

selection_statement
        : IF '(' expression ')' statement ELSE statement
       {
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"selection_statement\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"IF\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"(\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\")\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$5<<";"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"ELSE\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$7<<";"<<std::endl;
				
	}
	;

iteration_statement
	: WHILE '(' expression ')' statement
	{
		
		
		
		
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"iteration_statement\"];"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\"WHILE\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"(\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\")\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$5<<";"<<std::endl;
				
	}
	| FOR '(' expression ';' expression ';' expression ')' statement
	{
			
		count++;$$=count;
		std::cout<<count<<" "<<"[label=\"iteration_statement\"];"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"FOR\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\"(\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;

		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
		
		count++;
		std::cout<<count<<" "<<"[label=\";\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		
		std::cout<<$$<<" -> "<<$5<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\";\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$7<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\")\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$9<<";"<<std::endl;
	}
	;

declaration_list
	: declaration
	{
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"declaration_list\"];"<<std::endl;
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
	}
	| declaration_list declaration
		{
		
		
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"declaration_list\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$2<<";"<<std::endl;		
	}
	;

declaration
	: type_specifier declarator_list';'
	{
		
		
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"declaration\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$2<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\";\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
				
	}
	;

declarator_list
	: declarator
	{
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"declarator_list\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		
	}
	| declarator_list ',' declarator
	
	{
		
		
		
		
		count++;
		$$=count;
		std::cout<<count<<" "<<"[label=\"declarator_list\"];"<<std::endl;
		
		std::cout<<$$<<" -> "<<$1<<";"<<std::endl;
		count++;
		std::cout<<count<<" "<<"[label=\",\"];"<<std::endl;
		std::cout<<$$<<" -> "<<count<<";"<<std::endl;
		std::cout<<$$<<" -> "<<$3<<";"<<std::endl;
				
	}
	;
/*
-----------------------------------------------------------------------------------------

A description of integer and float costants. Not part of the grammar.  

Numeric constants are defined as: 

C-constant:
  C-integer-constant
  floating-point-constant
 
C-integer-constant:
  [1-9][0-9]*
  0[bB][01]*
  0[0-7]*
  0[xX][0-9a-fA-F]*
 
floating-point-constant:
  integer-part.[fractional-part ][exponent-part ]

integer-part:
  [0-9]*
 
fractional-part:
  [0-9]*
 
exponent-part:
  [eE][+-][0-9]*
  [eE][0-9]*

The rule given above is not entirely accurate. Correct it on the basis of the following examples:

1.
23.1
01.456
12.e45
12.45e12
12.45e-12
12.45e+12

The following are not examples of FLOAT_CONSTANTs:

234
.





*/
