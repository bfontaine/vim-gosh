" Vim indent file
" Language:     Gosh
" Maintainer:   Baptiste Fontaine <b at ptistefontaine.fr>
" Last Changed: 28 Feb 2015

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Comments
"=========
syn cluster goshCommentGroup contains=goshTodo,@Spell
syn keyword goshTodo contained FIXME TODO XXX
syn match goshComment "#.*$" contains=@goshTodo

syn keyword goshStatement alias cd echo exit quit

" Synchronization
" ===============
if !exists("sh_minlines")
  let sh_minlines = 200
endif
if !exists("sh_maxlines")
  let sh_maxlines = 2 * sh_minlines
endif
exec "syn sync minlines=" . sh_minlines . " maxlines=" . sh_maxlines

" Default Highlighting
" ====================
hi def link goshComment      Comment

hi def link goshStatement    Statement
hi def link goshTodo         Todo

" Set Current Syntax
" ==================
let b:current_syntax = "gosh"

" vim: ts=4
