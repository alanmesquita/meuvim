" vimrc
"

set nocompatible
filetype off

" Estou usando o Vundle para gerenciar os bundles
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Agora os bundles
" Navegador para os buffers abertos
Bundle 'vim-scripts/bufexplorer.zip'

" Adiciona opções para apagar, selecionar, etc dentro de tags, aspas, etc.
Bundle 'tpope/vim-surround'

" O melhor wrapper Git de todos os tempos =P
Bundle 'tpope/vim-fugitive'

" Mostrando adições, remoções e alterações do Git
Bundle 'airblade/vim-gitgutter'

" Adiciona tags html e mais umas coisinhas para o %
Bundle 'vim-scripts/matchit.zip'

" Snippets
Bundle 'msanders/snipmate.vim'

" Melhora os temas para terminais
Bundle 'godlygeek/csapprox'

" Integração com o Twig
Bundle 'evidens/vim-twig'

" Números das linhas relativo no modo normal e absoluto no modo insert
Bundle 'myusuf3/numbers.vim'

" HTML5
Bundle 'othree/html5.vim'

" CSS3
Bundle 'hail2u/vim-css3-syntax'

" Exibe os espaços em branch no final de linhas
Bundle 'bronson/vim-trailing-whitespace'

" Blade
Bundle 'xsbeats/vim-blade'

" Esquemas de cores
" Bundle 'altercation/vim-colors-solarized'
" Bundle 'spf13/vim-colors'
Bundle 'baskerville/bubblegum'

" Emmet vim
Bundle 'mattn/emmet-vim'

" ruby
Bundle 'vim-ruby/vim-ruby'

"
" Abaixo estão os Bundles que precisam de algumas opções/personalizações
"

" NerdTree: Navegador de arquivos e diretórios
Bundle 'scrooloose/nerdtree'
map ,t <ESC>:NERDTreeToggle<CR>
map ,T <ESC>:NERDTreeFind<CR>
let NERDTreeHighlightCursorline=1       " Destaca a linha atual
let NERDTreeShowHidden=1                " Lista arquivos ocultos
let NERDTreeShowLineNumbers=0
let NERDTreeQuitOnOpen=0
let NERDTreeIgnore=['\.*swp$', '\.*pyc$', '^\.git$', '^\.hg$']          " Arquivos que não serão exibidos.

" TagList: Lista de classes e métodos em um arquivo
Bundle 'vim-scripts/taglist.vim'
nnoremap ,l :TlistToggle<CR>
let Tlist_Use_Right_Window=1            " Lista de tags à direita
let Tlist_GainFocus_On_ToggleOpen=1     " Ganhar foco
let Tlist_File_Fold_Auto_Close=1        " Não exibe tags de buffers inativos
let Tlist_Sort_Type="name"              " Ordenar pelo nome e não pela ordem no arquivo
let Tlist_Close_On_Select=1             " Fecha a taglist após selecionar uma tag
" Escondendo itens no TagList para PHP
let tlist_php_settings='php;c:Classes;f:Functions'

" Airline: Linha de status bem completa, tem até git.
Bundle 'bling/vim-airline'
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1
"let g:airline_enable_branch=1
"let g:airline_enable_syntastic=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=1
let g:airline_detect_paste=1

" CtrlP: Pesquisa arquivos e diretórios
Bundle 'kien/ctrlp.vim'
nnoremap ,f :CtrlP<CR>
let g:ctrlp_working_path_mode='' "Pesquisa a partir do diretório atual no Vim.

" Markdown: Sintax highlight para markdown
Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

" Syntastic: Verifica sintaxe e exibe erros
Bundle 'scrooloose/syntastic'
let g:syntastic_ruby_exec='ruby1.9.1'
" Exemplo
" let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

" Matchmaker: Destaca as palavras iguais
Bundle 'qstrahl/vim-matchmaker'
let g:matchmaker_enable_startup = 1

"
" Daqui para baixo são as minhas opções
"
syntax enable       " Habilita a marcação de sintaxe

let mapleader=","

" Persistent undo
if has('persistent_undo')
    set undodir=~/.vimundo      " Diretório de gravação do undo
    set undofile                " desfazer persistente
    set undolevels=1000         " número de alterações para desfazer
    set undoreload=10000        " número de linhas do undo no reload de um buffer
endif

set nobackup
set noswapfile      " Eu não uso os arquivos de swap e backup...

set hidden          " Pode esconder buffers não salvos.

set encoding=utf-8
set showmode        " Exibe o modo atual
set wildmenu        " Menu com as opções do vim usando tab
set background=dark " Define o fundo preto (É melhor usar isso com a sintaxe)
set nu              " Mostra o número de linhas
set ai              " Faz o auto tab/auto indent
set ts=2            " tab vale 4 espaços
set sw=2            " tab com 4 espaços
set softtabstop=2   " Operações como o backspace também com 4 espaços
set et              " Troca tabs por espaços
set ruler           " Mostra a posição do cursor
set cursorline      " Destaca a linha atual
set laststatus=2    " Sempre exibe a barra de status
set clipboard=unnamedplus   " Copia do vim para o clipboard
set mouse=a

set autoread        " Recarrega arquivos alterados em disco automaticamente

set tw=90           " Define a largura do texto como 80 caracteres
set colorcolumn=91  " Deixa a coluna 80 colorida
set incsearch       " Pesquisa incremental
set hlsearch        " Highligth search :)
set ignorecase      " Pesquisa ignora caixa alta e baixa
set smartcase       " Pesquisa considera caixa alta apenas se ouver uma ou mais maiúsculas na pesquisa
set exrc            " enable per-directory .vimrc files
set secure          " disable unsafe commands in local .vimrc files

" Mapas, atalhos, etc
"
" Limpando a pesquisa
nmap <silent> ,/ :nohlsearch<CR>

" Sem setas.
"map <Up> <nop>
"map <Down> <nop>
"map <Left> <nop>
"map <Right> <nop>

" Abas, uso bastante
nmap <silent> tn :tabnew<CR>
nmap <silent> tq :tabclose<CR>

" Opções para que blocos selecionados sejam reselecionados após identações.
" Ajuda muito na hora de identar grandes e confusos blocos =)
vnoremap < <gv
vnoremap > >gv

:filetype plugin on
:filetype plugin indent on

nnoremap ,white :%s/\s\+$//<CR>

" Para as cores funcionarem bem é preciso usar 256 cores no terminal.
" No bashrc, zshrc ou similar, faça algo como
" export TERM="xterm-256color"

" Cores a considerar:
" colo zenburn
" let g:solarized_termcolors=256
" colorscheme bubblegum
colorscheme Tomorrow-Night

" Definindo sintaxe PHP para arquivos com a extensão 'thtml'.
au BufNewFile,BufRead *.thtml setfiletype php

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

set t_ut=
