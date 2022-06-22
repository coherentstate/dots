"_________ Declare the list of plugins__________

" Plugins will be downloaded under the specified directory
call plug#begin('~/.config/nvim/plugged')


"_________________Neovim lualine_______________

" Lualine config can be found in the main init.vim file
" since it is a lua plugin and mainly configured in lua
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons

"_________________Vim surround__________________

Plug 'tpope/vim-surround'

"________________Vim commentary_________________

Plug 'tpope/vim-commentary'

"______________Neovim plenary___________________

" This plugin is required for a variety of neovim plugins
Plug 'nvim-lua/plenary.nvim'

"_______________Colorschemes___________________
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'ellisonleao/gruvbox.nvim'
Plug 'hzchirs/vim-material'
Plug 'marko-cerovac/material.nvim'
Plug 'ful1e5/onedark.nvim'

"____________________Vimtex____________________
Plug 'lervag/vimtex'
let g:vimtex_view_method = 'zathura'


"___________________Ultisnips__________________

Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJunpBackwardTrigger = '<s-tab>'

"____________________Vim fzf___________________

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

"__________________Nvim cmp_____________________

" nvim-cmp configuration can be found in the main init.vim file
" since it is lua plugin and mainly configured in lua
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

"__________________Vim easyalign________________

Plug 'junegunn/vim-easy-align'

"________________Nvim tree_____________________

Plug 'kyazdani42/nvim-tree.lua'

"_____________Neovim bufferline________________

Plug 'akinsho/bufferline.nvim'

"_____________Neovim treesitter________________

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"_________________Toggleterm neovim_______________

Plug 'akinsho/toggleterm.nvim'

"________________Neovim dashboard_________________

"Plug 'glepnir/dashboard-nvim'
"let g:dashboard_default_executive='fzf'
"let g:dashboard_custom_header = [
"\ '',
"\ '╭━━━━┳╮╱╱╱╱╱╱╭━━╮╱╱╱╭━╮╱╭╮',
"\ '┃╭╮╭╮┃┃╱╱╱╱╱╱╰┫┣╯╱╱╱┃┃╰╮┃┃',
"\ '╰╯┃┃╰┫╰━┳┳━━╮╱┃┃╭━━╮┃╭╮╰╯┣━━┳━━┳╮╭┳┳╮╭╮',
"\ '╱╱┃┃╱┃╭╮┣┫━━┫╱┃┃┃━━┫┃┃╰╮┃┃┃━┫╭╮┃╰╯┣┫╰╯┃',
"\ '╱╱┃┃╱┃┃┃┃┣━━┃╭┫┣╋━━┃┃┃╱┃┃┃┃━┫╰╯┣╮╭┫┃┃┃┃',
"\ '╱╱╰╯╱╰╯╰┻┻━━╯╰━━┻━━╯╰╯╱╰━┻━━┻━━╯╰╯╰┻┻┻╯',
"\ '',
"\ ]

"_________ List ends here. Plugins become visible to vim after this________
call plug#end()

