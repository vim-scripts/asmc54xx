" Vim indent file
" Language:     TI C54xx Assembler
" Maintainer:   Gerd Wiegand <gpw2006@gerwitec.de>
" Last Change:  2007 Oct 26
" URL:          http://www.vim.org
" Revision:     1.0

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif
let b:did_indent = 1

" use build-in C indenting style
setlocal autoindent

let b:undo_indent = "setl cin<"
