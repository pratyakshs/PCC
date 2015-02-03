all:    graph lex.cc parse.cc main.cc Scanner.h Scannerbase.h Scanner.ih Parser.h Parserbase.h Parser.ih a.out
# 	egrep 'nextToken|reduce|shift' junk
        

graph:  a.out
	./a.out < test.cc > graph.gv;
	dot -Tps graph.gv -o graph.ps;
	gnome-open graph.ps &

lex.cc: lex.l Scanner.ih 
# 	./cond_remove_scannerih; 
	rm -f Scanner.ih;
	flexc++ lex.l; 
	sed -i '/include/a #include "Parserbase.h"' Scanner.ih; 
# 	grep "{return [A-Z_]*;}" lex.l | sed 's/.*return \([A-Z_]*\);.*/\1/g' | sed '1s/\(.*\)/\1=256/g' | tr '\n' ',' | sed "s/,$$/};/g" | sed 's/^/\t\tenum Tokens{/g' > enums;
# 	sed -i "s/.*insert lexFunctionDecl/`cat enums`/g"  Scanner.h

parse.cc: parse.y Parser.ih Parser.h Parserbase.h
	bisonc++ parse.y; 
	sed -i 's/d_scanner;/d_scanner; int count = 0;/' Parser.h;
#	bisonc++   --construction -V parse.y; 
#	sed -i '/ifndef/a #include "tree_util.hh"' Parserbase.h;
#	sed -i '/ifndef/a #include "tree.hh"' Parserbase.h;
#	./sedscript
     

a.out:	lex.cc parse.cc main.cc
	g++   --std=c++0x lex.cc parse.cc main.cc;
	

Parser.ih: parse.y
Parser.h:  parse.y
Parserbase.h: parse.y
Scanner.ih: lex.l
Scanner.h: lex.l
Scannerbase.h: lex.l

clean:
	rm -f lex.cc parse.cc Parserbase.h Parser.ih Scannerbase.h Scanner.h Scanner.ih graph.gv graph.ps enums a.out Parser.h

