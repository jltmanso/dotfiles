" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

   " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
   " Status line
    Plug 'itchyny/lightline.vim'
    " Git wrapper
    Plug 'tpope/vim-fugitive'
    " Fuzzy finder
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    " Project tree
    Plug 'kyazdani42/nvim-tree.lua'
    " Better highlightining
    Plug 'kyazdani42/nvim-treesitter'
    " Fancy start screen
    Plug 'mhinz/vim-startify'
    " Wiki
    Plug 'vimwiki/vimwiki'


    Plug 'prabirshrestha/vim-lsp'
    Plug 'Shougo/deoplete.nvim'
    Plug 'lighttiger2505/deoplete-vim-lsp'
    Plug 'jackguo380/vim-lsp-cxx-highlight'

call plug#end()

source $HOME/.config/nvim/vim-plug/lightline.vim
source $HOME/.config/nvim/vim-plug/vim-lsp.vim
" source $HOME/.config/nvim/vim-plug/NERDTree.vim
" source $HOME/.config/nvim/vim-plug/gutentags.vim
