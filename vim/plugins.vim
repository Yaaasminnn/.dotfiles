call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'yggdroot/indentline'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'puremourning/vimspector'
"Plug 'wfxr/minimap.vim'
Plug 'NLKNguyen/papercolor-theme'

Plug 'StanAngeloff/php.vim' " php syntax support
" Include Phpactor
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}

" Require ncm2 and this plugin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'

" auto completion
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

Plug 'davidhalter/jedi-vim' " python autocomplete


call plug#end()

