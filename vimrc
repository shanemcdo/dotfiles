color molokai
set hls
set encoding=utf-8
set nocp
set rnu
set nu
set nowrap
set bri
set fo-=tcq
set makeprg=g++\ -o\ %<\ %
set undofile
set directory=~/.vim/trash/
set undodir=~/.vim/trash/
set backupdir=~/.vim/trash/
set complete+=kspell
set completeopt=menu,preview,menuone
set shortmess+=c
set tabstop=4 
set expandtab 
set shiftwidth=4 
set softtabstop=4
set sc
set incsearch
set backspace=indent,eol,start
set shell=zsh\ -i "Allow the zshrc to take effect in the vim shell
let mapleader = ' '
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
nmap <s-space> <leader>
nnoremap <leader>r :%s/\<<c-r><c-w>\>//g<left><left>
nnoremap <leader>q :wqa<ENTER>
nnoremap <leader>Q :wq<ENTER>
nnoremap <leader>w :wa<ENTER>
nnoremap <leader>W :w<ENTER>
nnoremap <leader>n :!new_window<cr><cr>
nnoremap <leader>N :!new_tab<cr><cr>
noremap <leader>y "*y
noremap <leader>Y "*Y
noremap <leader>d "*d
noremap <leader>D "*D
noremap <leader>p "*p
noremap <leader>P "*P
nnoremap <leader>z :qa!<enter>
nnoremap <leader>a :q!<enter>
nnoremap <leader>c :!open -a "Google Chrome"<ENTER><ENTER>
nnoremap <leader>cg :!open https://github.com/KermitPurple?tab=repositories<ENTER><ENTER>
nnoremap <leader>cd :!open https://devdocs.io/<ENTER><ENTER>
nnoremap <leader>cy :!open https://youtube.com/<ENTER><ENTER>
nnoremap <leader>cn :!open https://github.com/new<ENTER><ENTER>
nmap <leader>N <leader>w:sleep 250ms<ENTER><leader>n:sleep 250ms<ENTER><leader>q
nnoremap <leader>m :!make <cr><cr>
nnoremap <leader>mn :!make 
nnoremap <leader>mt :!make test<cr><cr>
nnoremap <leader>mc :!make clean<cr><cr>
nnoremap <leader>mct :!make clean test<cr><cr>
nmap <leader>i <plug>(YCMHover)
nnoremap <leader>gg :YcmCompleter GoTo<cr>
nnoremap <leader>gd :YcmCompleter GoToDeclaration<cr>
nnoremap <leader>gi :YcmCompleter GoToInclude<cr>
nnoremap <leader>b :ls<enter>
nnoremap <leader>bb :ls<enter>
nnoremap <leader>bn :bnext<enter>
nnoremap <leader>bN :bprev<enter>
nnoremap <leader>bd :bd<enter>
nnoremap <leader>b1 :b1<enter>
nnoremap <leader>b2 :b2<enter>
nnoremap <leader>b3 :b3<enter>
nnoremap <leader>b4 :b4<enter>
nnoremap <leader>b5 :b5<enter>
nnoremap <leader>b6 :b6<enter>
nnoremap <leader>b7 :b7<enter>
nnoremap <leader>b8 :b8<enter>
nnoremap <leader>b9 :b9<enter>
nnoremap <left> 2<c-w><
nnoremap <right> 2<c-w>>
nnoremap <up> 2<c-w>+
nnoremap <down> 2<c-w>-
nnoremap <leader>t :NERDTreeToggle<enter>
nnoremap <leader>T :tabnew<enter>
map <leader><leader> gc
nmap <leader><leader><leader> gcc
nnoremap <f2> :silent source ~/.vim/vimrc \| execute "setlocal ft=".&ft <CR>
nnoremap <leader>; :ter<cr>
nnoremap <leader>: :vert ter<cr>
nnoremap <leader>s :Startify<cr>
nnoremap <leader>l :!live-server<cr>
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/luochen1990/rainbow'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
Plug 'tomtom/tcomment_vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-python/python-syntax'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'pangloss/vim-javascript'
Plug 'mhinz/vim-startify'
Plug 'ycm-core/YouCompleteMe'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
call plug#end()
let g:UltiSnipsListSnippets = "<s-tab>"
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 40
let g:indent_guides_default_mapping = 0
let g:python_highlight_all = 1
let g:cpp_member_variable_highlight = 0
let g:cpp_class_decl_highlight = 1
let g:indent_guides_auto_colors = 0
let g:ascii_art_header = [
            \ '*---------------------------------------------------------------------------------*',
            \ '|  ____          ____                 ____           ____      _                  |',
            \ '| | __ )  ___   / ___| __ _ _   _    |  _ \  ___    / ___|_ __(_)_ __ ___   ___   |',
            \ '| |  _ \ / _ \ | |  _ / _` | | | |   | | | |/ _ \  | |   | ''__| | ''_ ` _ \ / _ \  |',
            \ '| | |_) |  __/ | |_| | (_| | |_| |_  | |_| | (_) | | |___| |  | | | | | | |  __/_ |',
            \ '| |____/ \___|  \____|\__,_|\__, (_) |____/ \___/   \____|_|  |_|_| |_| |_|\___(_)|',
            \ '|                           |___/                                                 |',
            \ '*---------------------------------------------------------------------------------*',
            \]
let g:startify_custom_header = 'startify#pad(g:ascii_art_header + startify#fortune#boxed())'
let g:startify_custom_footer = ['Also you''re gay!']
let g:startify_bookmarks = [
            \ {'r': '~/.vim/vimrc'},
            \ ]
let g:startify_commands = [
            \ {'n': ['Open NERDTree', 'NERDTree']},
            \ {'c': ['change to C++ Directory', 'cd ~/coding/c++']},
            \ {'p': ['change to Python Directory', 'cd ~/coding/python']},
            \ {'w': ['change to Web Directory', 'cd ~/coding/web']},
            \ {'R': ['change to Rust Directory', 'cd ~/coding/rust']},
            \ {'T': ['change to temp Directory', 'cd ~/temp']},
            \ {'S': ['change to School Directory', 'cd ~/dropbox/school/fall2021']},
            \ {'o': ['Open current Directory', 'e .']},
            \ ]
let g:ycm_autoclose_preview_window_after_completion = 1 " close preview window automatically
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf = 0 " don't have to confirm ycm conf
let g:tex_flavor = "latex"
" https://gist.github.com/bignimbus/1da46a18416da4119778
" Set the title of the Terminal to the currently open file
function! SetTerminalTitle()
    let titleString = expand('%:t')
    if len(titleString) > 0
        let &titlestring = expand('%:t')
        " this is the format iTerm2 expects when setting the window title
        let args = "\033];".&titlestring."\007"
        let cmd = 'silent !echo -e "'.args.'"'
        execute cmd
        redraw!
    endif
endfunction
autocmd BufEnter * call SetTerminalTitle()
