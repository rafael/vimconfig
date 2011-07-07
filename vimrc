" == Initial Setup (Pathogen)
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
set modelines=0

" == General Settings Module
source ~/.vim/modules/general.vim
" == Status Line Module
source ~/.vim/modules/statusline.vim
" == Search module
source ~/.vim/modules/search.vim
" == Window Management module
source ~/.vim/modules/window.vim
" == Tabs Management module
source ~/.vim/modules/tabs.vim
" == Mark Lines module
source ~/.vim/modules/marklines.vim
" == Tabular module
source ~/.vim/modules/tabular.vim
" == Vimshell module
source ~/.vim/modules/vimshell.vim
" == Neocomplcache module
source ~/.vim/modules/neocomplcache.vim
" == Haskell module
source ~/.vim/modules/haskell.vim
" == Ref-Hoogle module
source ~/.vim/modules/hoogle.vim
" == Unite module
source ~/.vim/modules/unite.vim
" == Nerd Tree module
source ~/.vim/modules/nerdtree.vim
" == Yankring module
source ~/.vim/modules/yankring.vim
" == QuickRun module
source ~/.vim/modules/quickrun.vim
" == QuickFix module
source ~/.vim/modules/quickfix.vim
" == TPP module
source ~/.vim/modules/tpp.vim

" NOTE: LAST MODULE, PLEASE DON'T REMOVE
" == Project Config module
source ~/.vim/modules/project_config.vim

" If vim is starting without an input file, start
" with VimShell
function! InitVimCallback()
  if empty(bufname('%'))
    NERDTree 
  endif
endfunction

autocmd VimEnter * call InitVimCallback()
