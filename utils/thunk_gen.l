%option noyywrap

%{
/*
 * function prototype parser - lexer
 * Author: Stas Sergeev
 *
 */

#include <stdio.h>

#define YY_DECL int yylex()

#include "thunk_gen.tab.h"

%}

%%

[0-9]+		{ return NUM; }
"("		{ return LB; }
")"		{ return RB; }
";"		{ return SEMIC; }
","		{ return COMMA; }
"\n"		{ return NEWLINE; }
"ASMCFUNC"	{ return ASMCFUNC; }
"ASMPASCAL"	{ return ASMPASCAL; }
"ASMFUNC"	{ }
"FAR"		{ return FAR; }
"far"		{ return FAR; }
"*"		{ return ASTER; }
"VOID"		{ return VOID; }
"void"		{ return VOID; }
"WORD"		{ return WORD; }
"COUNT"		{ return INT; }
"BOOL"		{ return INT; }
"int"		{ return INT; }
"unsigned"	{ return UINT; }
"long"		{ return LONG; }
"UCOUNT"	{ return UINT; }
"UWORD"		{ return UWORD; }
"BYTE"		{ return BYTE; }
"UBYTE"		{ return UBYTE; }
"unsigned char"	{ return UBYTE; }
"struct"	{ return STRUCT; }
[\t ]+		{ /* skip spaces */ }
[_A-Za-z][_A-Za-z0-9]*	{ return STRING; }

%%