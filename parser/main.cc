#include <iostream>
#include "Scanner.h"
#include "Parser.h"
using namespace std;
int main (int argc, char** arg)
{
  cout << "digraph G{" << endl;
  cout << "graph [ordering=\"out\"];" << endl;
  Parser parser;
  parser.parse();
  cout << "}" << endl;
}


