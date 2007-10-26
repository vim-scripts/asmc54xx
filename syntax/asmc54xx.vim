" Vim syntax file
" Language:     TI C54xx Assembler
" Maintainer:   Gerd Wiegand <gpw2006@gerwitec.de>
" Last Change:  2007 Oct 26
" URL:          http://www.vim.org
" Revision:     1.0
"
" based on ARM Assembler syntax file (armasm.vim) by Gerald S. Williams


" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case match
syn keyword asmc54xxTodo		NOTE TODO XXX contained


syn case ignore

syn keyword asmc54xxOpcode      ABDST ABS ADD ADDC ADDM ADDS AND ANDM B BACC
syn keyword asmc54xxOpcode      BACCD BANZ BANDD BC BCD BD BIT BITF BITT CALA
syn keyword asmc54xxOpcode      CALAD CALL CALLD CC CCD CMPL CMPM CMPR CMPS DADD
syn keyword asmc54xxOpcode      DADST DELAY DLD DRSUB DSADT DST DSUB DSUBT EXP FB
syn keyword asmc54xxOpcode      FBACC FBACCD FBD FCALA FCALAD FCALL FCALLD FIRS FRAME FRET
syn keyword asmc54xxOpcode      FRETD FRETE FRETED IDLE INTR LD LDM LDR LDU LTD
syn keyword asmc54xxOpcode      LMS MAC MACA MACAR MACD MACP MACR MACSU MAR MAS 
syn keyword asmc54xxOpcode      MASA MASAR MASR MAX MIN MPY MPYA MPYR MVDD MVDK
syn keyword asmc54xxOpcode      MVDM MVDP MVKD MVMD MVMM MVPD NEG NOP NORM OR
syn keyword asmc54xxOpcode      ORM POLY POPD POPM PORTR PORTW PSHD PSHM RC RCD
syn keyword asmc54xxOpcode      READA RESET RET RETD RETE RETED RETF RETFD RND ROL
syn keyword asmc54xxOpcode      ROLTC ROR RPT RPTB RPTBD RPTZ RSBX SACCD SAT SFTA
syn keyword asmc54xxOpcode      SFTC SFTL SQDST SQUR SQURA SQURS SRCCD SSBX ST STH
syn keyword asmc54xxOpcode      STL STLM STM STRCD SUB SUBB SUBC SUBS TRAP WRITA
syn keyword asmc54xxOpcode      XC XOR XORM

syn match asmc54xxSpecialSymbols "\$\|+\|-\|\*\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|)\|(\|{\|}\|\.\|\[\|\]\|\^" 
syn match asmc54xxIdentifier	"[a-z_$][a-z0-9_$]*"
syn match asmc54xxLabel		"^[A-Z_$][A-Z0-9_$]*"
" Constants which are set
syn match asmc54xxIdentifier    "[a-z_$][a-z0-9_$]*[?]*\s\+\.\w\+" contains=asmc54xxDirective
syn region asmc54xxLabel		start="||" end="||" oneline
syn region asmc54xxLabel		start="|" end="|" oneline

syn region asmc54xxASCII		start="'" end="'" skip="\\'" oneline
syn match asmc54xxDecimal		"\d\+"
syn match asmc54xxOctal		"\o\+[qQ]"
syn match asmc54xxOctal		"0\o\+"
syn match asmc54xxHexadecimal	"0[xX]\x\+"
syn match asmc54xxHexadecimal	"\d\x\+[hH]"
syn match asmc54xxBinary	"[0-1]\+[bB]"
syn match asmc54xxFloat		"-\=[0-9]\+[eE]-\=[0-9]\+"
syn match asmc54xxFloat		"-\=[0-9]*\.[0-9]\+\([eE]-\=[0-9]\+\)\="

" TODO: consider handling for string expansions ($x)

syn match asmc54xxComment		";.*" contains=asmc54xxTodo
syn match asmc54xxComment		"^\*.*" contains=asmc54xxTodo

syn region asmc54xxString		start=+"+ end=+"+ oneline

syn keyword asmc54xxOperator      BIO C TC AEQ ANEQ AGT AGEQ ALT ALEQ AOV ANOV UNC
syn keyword asmc54xxOperator      NBIO NC NTC BEQ BNEQ BGT BGEQ BLT BLEQ BOV BNOV


syn keyword asmc54xxRegister	A AG AH AL AR0 AR1 AR2 AR3 AR4 AR5
syn keyword asmc54xxRegister	AR6 AR7 AR8 AR9 AR10 AR11 AR12 AR13 ARR ARR0
syn keyword asmc54xxRegister	ARR1 ARX AXR AXR0 AXR1 B BDDR0 BDRR BDRR1 BDXR
syn keyword asmc54xxRegister	BDXR0 BDXR1 BG BH BK BKR BKR1 BKX BKX0 BKX1
syn keyword asmc54xxRegister	BL BRC BSCR BSPC BSPC1 BSPCE BSPCE0 BSPCE1 CLKMD CPL DRR
syn keyword asmc54xxRegister	DRR0 DRR1 DXR DXR0 DXR1 HPIC IFR IMR IOWSR PC
syn keyword asmc54xxRegister	PDWSR PMST PRD REA RSA SP SPC SPC0 SPC1 SPCE
syn keyword asmc54xxRegister	ST ST0 ST1 SWWSR T TCR TCSR TDXR TIM TRAD
syn keyword asmc54xxRegister	TRCV TRN TRTA TSPC XPC


syn match asmc54xxDirective "\.algebraic"
syn match asmc54xxDirective "\.align"
syn match asmc54xxDirective "\.asg"
syn match asmc54xxDirective "\.bes"
syn match asmc54xxDirective "\.break"
syn match asmc54xxDirective "\.bss"
syn match asmc54xxDirective "\.byte"
syn match asmc54xxDirective "\.copy"
syn match asmc54xxDirective "\.data"
syn match asmc54xxDirective "\.def"
syn match asmc54xxDirective "\.drlist"
syn match asmc54xxDirective "\.drnolist"
syn match asmc54xxDirective "\.else"
syn match asmc54xxDirective "\.elseif"
syn match asmc54xxDirective "\.emsg"
syn match asmc54xxDirective "\.end[a-z]*"
syn match asmc54xxDirective "\.equ"
syn match asmc54xxDirective "\.eval"
syn match asmc54xxDirective "\.fclist"
syn match asmc54xxDirective "\.fcnolist"
syn match asmc54xxDirective "\.field"
syn match asmc54xxDirective "\.float"
syn match asmc54xxDirective "\.global"
syn match asmc54xxDirective "\.if"
syn match asmc54xxDirective "\.include"
syn match asmc54xxDirective "\.int"
syn match asmc54xxDirective "\.label"
syn match asmc54xxDirective "\.length"
syn match asmc54xxDirective "\.list"
syn match asmc54xxDirective "\.long"
syn match asmc54xxDirective "\.loop"
syn match asmc54xxDirective "\.macro"
syn match asmc54xxDirective "\.mlib"
syn match asmc54xxDirective "\.mlist"
syn match asmc54xxDirective "\.mmregs"
syn match asmc54xxDirective "\.mmsg"
syn match asmc54xxDirective "\.mnolist"
syn match asmc54xxDirective "\.newblock"
syn match asmc54xxDirective "\.nolist"
syn match asmc54xxDirective "\.option"
syn match asmc54xxDirective "\.page"
syn match asmc54xxDirective "\.pstring"
syn match asmc54xxDirective "\.ref"
syn match asmc54xxDirective "\.sblock"
syn match asmc54xxDirective "\.sect"
syn match asmc54xxDirective "\.set"
syn match asmc54xxDirective "\.space"
syn match asmc54xxDirective "\.sslist"
syn match asmc54xxDirective "\.ssnolist"
syn match asmc54xxDirective "\.struct"
syn match asmc54xxDirective "\.string"
syn match asmc54xxDirective "\.tab"
syn match asmc54xxDirective "\.tag"
syn match asmc54xxDirective "\.text"
syn match asmc54xxDirective "\.title"
syn match asmc54xxDirective "\.usect"
syn match asmc54xxDirective "\.version"
syn match asmc54xxDirective "\.width"
syn match asmc54xxDirective "\.wmsg"
syn match asmc54xxDirective "\.word"
syn match asmc54xxDirective "\.xfloat"
syn match asmc54xxDirective "\.xlong"


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_asmc54xx_syntax_inits")
  if version < 508
    let did_asmc54xx_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink asmc54xxTodo		Todo
  HiLink asmc54xxComment	Comment
  HiLink asmc54xxDirective	Statement
  HiLink asmc54xxString		String
  HiLink asmc54xxRegister	Structure
  HiLink asmc54xxASCII		Character
  HiLink asmc54xxBinary		Number
  HiLink asmc54xxDecimal	Number
  HiLink asmc54xxHexadecimal	Number
  HiLink asmc54xxOctal		Number
  HiLink asmc54xxBase3		Number
  HiLink asmc54xxBase4		Number
  HiLink asmc54xxBase5		Number
  HiLink asmc54xxBase6		Number
  HiLink asmc54xxBase7		Number
  HiLink asmc54xxBase9		Number
  HiLink asmc54xxFloat		Float
  HiLink asmc54xxBoolean	Boolean
  HiLink asmc54xxBuiltIn	Constant
  HiLink asmc54xxIdentifier	Normal
  HiLink asmc54xxLabel		Label
  HiLink asmc54xxOpcode		Identifier
  HiLink asmc54xxOperator	Operator

  delcommand HiLink
endif

let b:current_syntax = "asmc54xx"

" vim: ts=8
