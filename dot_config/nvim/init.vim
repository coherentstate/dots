"________________Source the plugins and keys file____________________

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/keys.vim

"_____________Basic vim configuration_____________

" Relative line numbering
set relativenumber

" Set omnifunc completion
set omnifunc=v:lua.vim.lsp.omnifunc

" Set colorscheme
set background=dark
" let g:material_style = "deep ocean"
" colorscheme material
" colorscheme gruvbox
colorscheme onedark
" let g:onedark_comment_style = "italic"
" let g:onedark_keyword_style = "italic"
" let g:onedark_function_style = "italic"
" let g:onedark_variable_style = "italic"
" let g:onedark_hide_inactive_statusline = 0
" let g:onedark_dark_sidebar = 1
" let g:onedark_dark_float = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

" Tabs and spaces configuration
set tabstop=4
set shiftwidth=4
set expandtab
syntax enable
filetype plugin indent on
set noshowcmd
set noruler
set numberwidth=3
"set wrap linebreak nolist
set visualbell

" Proper line wrapping. No display lines for certain file types
autocmd BufNewFile,BufRead *.tex,*.md,*.html,*.css
    \ setlocal fo=tcrwa textwidth=105

" Enable spell checking
set spelllang=en_us
autocmd FileType tex setlocal spell
autocmd FileType markdown setlocal spell
autocmd FileType txt setlocal spell
set complete+=kspell
set spellfile=~/.config/nvim/spell/en-utf8.add

" Background transparency. This makes vim inherit terminal background color.
" hi Normal guibg=NONE ctermbg=NONE

" Set path to python provider
let g:python3_host_prog = '/usr/bin/python'

" Ascii cat!
echo ">^.^<"

"________________Configuration for all the lua plugins___________________

lua << END

-- Lualine configuration
require('lualine').setup {
options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
        },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {},
        },
    --tabline = {},
    extensions = {'nvim-tree'},
    }
}

-- Neovim tree configuration
require('nvim-tree').setup {
}

-- Toggleterm setup
require('toggleterm').setup {
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.35
        end
    end,
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 3,
    start_in_insert = true,
    persist_size = true,
    close_on_exit = true,
    float_opts = {
        border = 'curved',
        width = 160,
        height = 45,
        windblend = 3,
        highlights = {
            border = "shadow",
        }
    }
}

-- Tresitter configuration
require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true,
        disable = { "bash", },
        additional_vim_regex_highlighting = false,
    },
}

-- Bufferline configuration
require('bufferline').setup{
options = {
    mode = "buffers",
    numbers = "ordinal",
    offsets = {{filetype = "NvimTree", text = "Explorer" }},
    show_tab_indicators = true,
    separator_style = "thick",
    diagnostics = "nvim_lsp",
    }
}

-- Lsp configuration
--Boilerplate configuration found in the nvim lspconfig github page
local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
    local opts = { noremap=true, silent=true }

    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
end


-- Neovim cmp configuration
local cmp = require'cmp'
cmp.setup({
    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    }
})

-- Python language server
require('lspconfig').pyright.setup{
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

-- Bash languager server
require('lspconfig').bashls.setup{
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

-- Latex language server
require('lspconfig').texlab.setup{
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

-- Rust language server (Rust-analyzer)
require('lspconfig').rust_analyzer.setup{
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

nvim_lsp.rust_analyzer.setup({
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    }
})

-- TODO: To add lua lsp configuration....

END
