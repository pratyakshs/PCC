all:    lex.cc  main.cc 
	g++   --std=c++0x lex.cc main.cc

lex.cc: lex.l 
	rm -f Scanner.h
	flexc++ lex.l;
	grep "{return [A-Z_]*;}" lex.l | sed 's/.*return \([A-Z_]*\);.*/\1/g' | sed '1s/\(.*\)/\1=256/g' | tr '\n' ',' | sed "s/,$$/};/g" | sed 's/^/\t\tenum Tokens{/g' > enums;
	sed -i "s/.*insert lexFunctionDecl/`cat enums`/g"  Scanner.h
