" NOTE: this is not the original file! converted for use with xterm-256
" Vim color file
" Original Version:
" Maintainer:   A. Sinan Unur
" Last Change:  2001/10/04

" Dark color scheme

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="256_king"

" GUI Color Scheme
hi Normal       cterm=NONE     ctermfg=15    
hi NonText      cterm=NONE     ctermfg=210
hi Function     cterm=NONE     ctermfg=105   
"hi Statement    cterm=BOLD     ctermfg=11    
hi Statement    cterm=NONE     ctermfg=11    
hi Special      cterm=NONE     ctermfg=14    
hi Constant     cterm=NONE     ctermfg=208   
hi Comment      cterm=NONE     ctermfg=114   
hi Preproc      cterm=NONE     ctermfg=83    
hi Type         cterm=NONE     ctermfg=204   
hi Identifier   cterm=NONE     ctermfg=14    
hi StatusLine   cterm=NONE     ctermfg=15    ctermbg=94
hi StatusLineNC cterm=NONE     ctermfg=0     ctermbg=252
hi Visual       cterm=NONE     ctermfg=15    ctermbg=35
hi Search       cterm=BOLD     ctermbg=11    ctermfg=19
hi VertSplit    cterm=NONE     ctermfg=15    ctermbg=241
hi Directory    cterm=NONE     ctermfg=10    
hi WarningMsg   cterm=STANDOUT ctermfg=20    ctermbg=11
hi Error        cterm=NONE     ctermfg=15    ctermbg=9
hi Cursor                      ctermfg=15    ctermbg=47
hi LineNr       cterm=NONE     ctermfg=252   
hi ModeMsg      cterm=NONE     ctermfg=21    ctermbg=15
hi Question     cterm=NONE     ctermfg=84    
hi CursorLine   cterm=none     ctermbg=234
hi CursorColumn cterm=none     ctermbg=234
hi diffChange                  ctermbg=17
hi diffText                    ctermbg=236
hi diffDelete                  ctermbg=52
hi diffAdd                     ctermbg=22
hi diffChanged                 ctermbg=17
hi diffRemoved                 ctermbg=52
hi diffAdded                   ctermbg=22
hi MatchParen  cterm=BOLD      ctermbg=NONE
hi LineNr                      ctermfg=240


