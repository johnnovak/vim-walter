" Vim syntax file
" Language:   REAPER WALTER configuration
" Maintainer: John Novak <john@johnnovak.net>

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax case match

syn keyword walterLayout      Layout EndLayout

syn keyword walterKeyword     clear reset set rect def macro front
syn match   walterOperator    "[\[\]\{\}]"
syn match   walterOperator    "=="
syn match   walterOperator    "<="
syn match   walterOperator    ">="
syn match   walterOperator    "[+\-*/!?<>=@]"

syn keyword walterVariable    reaper_version
syn keyword walterVariable    x y w h ls ts rs bs
syn keyword walterVariable    folderstate
syn keyword walterVariable    folderdepth maxfolderdepth mcp_maxfolderdepth
syn keyword walterVariable    recarm
syn keyword walterVariable    tcp_iconsize mcp_iconsize
syn keyword walterVariable    mcp_wantextmix
syn keyword walterVariable    tracknch trackpanmode tcp_fxparms
syn keyword walterVariable    trackcolor_valid
syn keyword walterVariable    trackcolor_r trackcolor_g trackcolor_b
syn keyword walterVariable    trans_flags trans_docked trans_center
syn keyword walterVariable    envcp_type

syn match   walterComment     ";.*$"

syn match   walterNumber      "[-+]\=\<\d*\.\=[0-9_]\>"
syn match   walterString      +"[^"]*"+

" Define the default highlighting.
" " For version 5.7 and earlier: only when not done already
" " For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_css_syntax_inits")
  if version < 508
    let did_css_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink walterLayout                 Type
  HiLink walterKeyword                Statement
  HiLink walterOperator               Operator
  HiLink walterVariable               Identifier
  HiLink walterComment                Comment
  HiLink walterNumber                 Number
  HiLink walterString                 String

  delcommand HiLink
endif

let b:current_syntax = "walter"

