#include <iostream>
#include "Scanner.h"
using namespace std;
int main()
{
  Scanner scanner;   // define a Scanner object
  while (int token = scanner.lex()) // get all tokens
    {
      string const &text = scanner.matched();
      switch (token)
	{
	case Scanner::IDENTIFIER:
	  cout << "identifier: " << text << '\n';
	  break;
	case '+':
	  cout << "arith_op: " << text << '\n';
	  break;
	  case '*':
	  cout << "arith_op: " << text << '\n';
	  break;
	  case '-':
	  cout << "arith_op: " << text << '\n';
	  break;
	  case '/':
	  cout << "arith_op: " << text << '\n';
	  break;
	case Scanner::STRING_LITERAL:
	  cout << "STRING_LITERAL: " << text << '\n';
	  break;
	case Scanner::INTEGER_CONSTANT:
	  cout << "INTEGER_CONSTANT: " << text << '\n';
	  break;
	case Scanner::FLOAT_CONSTANT:
	  cout << "FLOAT_CONSTANT: " << text << '\n';
	  break;
	  
	  case '<':
	  cout << "L_OP: " << text << '\n';
	  break;
	  case '>':
	  cout << "G_OP: " << text << '\n';
	  break;
	  case '=':
	  cout << "ASSIGN_OP: " << text << '\n';
	  break;
	  case '(':
	  cout << "BRACKET: " << text << '\n';
	  break;
	  case ')':
	  cout << "BRACKET: " << text << '\n';
	  break;
	  case '{':
	  cout << "BRACKET: " << text << '\n';
	  break;
	  case '}':
	  cout << "BRACKET: " << text << '\n';
	  break;
	  case ';':
	  cout << "PUNCTUATION: " << text << '\n';
	  break;
	  case ',':
	  cout << "PUNCTUATION: " << text << '\n';
	  break;
	  case Scanner::INC_OP:
	  cout << "INC_OP: " << text << '\n';
	  break;
	  case Scanner::DEC_OP:
	  cout << "DEC_OP: " << text << '\n';
	  break;
	  case Scanner::OR_OP:
	  cout << "OR_OP: " << text << '\n';
	  break;
	  case Scanner::AND_OP:
	  cout << "AND_OP: " << text << '\n';
	  break;
	  case Scanner::LE_OP:
	  cout << "LE_OP: " << text << '\n';
	  break;
	  case Scanner::GE_OP:
	  cout << "GE: " << text << '\n';
	  break;
	  case Scanner::NE_OP:
	  cout << "NE_OP: " << text << '\n';
	  break;
	  case Scanner::EQ_OP:
	  cout << "EQ_OP: " << text << '\n';
	  break;
	  case Scanner::IF:
	  cout << "IF: " << text << '\n';
	  break;
	  
	  case Scanner::FOR:
	  cout << "FOR: " << text << '\n';
	  break;
	  
	  case Scanner::WHILE:
	  cout << "WHILE: " << text << '\n';
	  break;
	  
	  case Scanner::RETURN:
	  cout << "RETURN: " << text << '\n';
	  break;
	  
	  case Scanner::VOID:
	  cout << "VOID: " << text << '\n';
	  break;
	  
	  case Scanner::INT:
	  cout << "INT: " << text << '\n';
	  break;
	  
	  case Scanner::FLOAT:
	  cout << "FLOAT: " << text << '\n';
	  break;
	  
	  case Scanner::LONG:
	  cout << "LONG: " << text << '\n';
	  break;
	  case Scanner::DOUBLE:
	  cout << "DOUBLE: " << text << '\n';
	  break;
	  
	default:
	  cout << "char. token: `" << text << "'\n";
	}
    }
}
