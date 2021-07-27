let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    " Tree view directory
    Plug 'preservim/nerdtree'
    " [NERDTREE] More friendly icons
    Plug 'ryanoasis/vim-devicons'
    " [NERDTRET] Git status for
    Plug 'Xuyuanp/nerdtree-git-plugin'
    " Plugin for calling lazygit from within neovim.
    " https://github.com/kdheepak/lazygit.nvim
    Plug 'kdheepak/lazygit.nvim'


    "Plug 'kyazdani42/nvim-web-devicons' " for file icons
    "Plug 'kyazdani42/nvim-tree.lua'
    "
    " Plugin to comment/uncomment whole selection
    Plug 'tpope/vim-commentary'
	" Nord colorscheme
    Plug 'arcticicestudio/nord-vim'
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme nord


" Plug 'neoclide/coc.nvim',

" Always show the signcolumn, otherwise it would shift the text each tim diagnostics appear/become resolved.
"set signcolumn=number

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
set updatetime=300

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Jump to code definition
"nmap <silent> <C-b> <Plug>(coc-definition)

" Symbol renaming.
"nmap <C-r> <Plug>(coc-rename)

" Formatting selected code.
"xmap <A-S-f>  <Plug>(coc-format-selected)
" Format whole file
nnoremap <A-S-f> :call CocAction('format')<CR>

" The editor.action.organizeImport code action will auto-format code and add missing imports. To run this automatically on save, add the following line to your init.vim:
"autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')


" enable completion with <TAB> 
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<C-g>u\<TAB>"





" Display line number
set number

" Turn on code highlight
syntax on

" Set tab size to 4 spaces
set sts=4
set ts=4
set sw=4

" Use spaces instead of tabs
set expandtab

"Get the 2-space YAML as the default when hit carriage return after the colon
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab



" Disable the replace function
function s:ForbidReplace()
    if v:insertmode isnot# 'i'
        call feedkeys("\<Insert>", "n")
    endif
endfunction
augroup ForbidReplaceMode
    autocmd!
    autocmd InsertEnter  * call s:ForbidReplace()
    autocmd InsertChange * call s:ForbidReplace()
augroup END


" Ctrl+Alt+left-arrow will go one window left, etc.
" https://vim.fandom.com/wiki/Switch_between_Vim_window_splits_easily
nmap <silent> <C-A-Up> :wincmd k<CR>
nmap <silent> <C-A-Down> :wincmd j<CR>
nmap <silent> <C-A-Left> :wincmd h<CR>
nmap <silent> <C-A-Right> :wincmd l<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif



" How can I map a specific key or shortcut to open NERDTree?
" Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):
" map <C-n> :NERDTreeToggle<CR>

"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>


set termguicolors " this variable must be enabled for colors to be applied properly


" Use system mouse
set mouse=a
" Use system clipboard
set clipboard+=unnamedplus
" Copy selected text when selecting with mouse
noremap <LeftRelease> "+y<LeftRelease>


" shift+arrow selection
" https://stackoverflow.com/a/47170991
set keymodel=startsel,stopsel

" Use CTRL+C and CTRL+V to copy and paste
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
map <C-v> pi
imap <C-v> <Esc>pi

" undo is bugged as hell....
"imap <C-z> <Esc>u
"imap <C-y> <Esc>red


" Plug 'tpope/vim-commentary'
" Togge comment
map <C-d> :Commentary<CR>

" TODO
" Shft + Up / Down
" Move line up or down
" nnoremap <leader>k :move-2<CR>
" nnoremap <S-A-Down> :move+<CR>
" xnoremap <leader>k :move-2<CR>
" xnoremap <S-A-Down> :move+<CR>


" Make searching a little smarter
set ignorecase
set smartcase

"
set hidden


" Hide status line
set laststatus=0

" Git configuration
nmap <silent> <C-T> :LazyGit<CR>

