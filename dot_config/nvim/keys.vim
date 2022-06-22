" Map leader keys
let mapleader=","
let maplocalleader="<space>"


" Easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Some normal mode mappings
nnoremap <leader>h ^
nnoremap <leader>l $
"nnoremap " a<C-v>u0336<esc><space> "Strikethrough text
nnoremap - ddp
nnoremap _ ddkP
nnoremap <C-u> gUawe
"nnoremap <leader>" ea"<esc>bi"<esc>lel
"nnoremap <leader>' ea'<esc>bi'<esc>lel
"nnoremap <leader>( ea)<esc>bi(<esc>lel
"nnoremap <leader>[ ea]<esc>bi[<esc>lel
"nnoremap <leader>{ ea}<esc>bi{<esc>lel
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <C-x>b :Buffers<CR>
nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <C-c>p :Files<CR>
nnoremap <leader>> :BufferLineCycleNext<CR>
nnoremap <leader>< :BufferLineCyclePrev<CR>
nnoremap <leader>] :BufferLineMoveNext<CR>
nnoremap <leader>[ :BufferLineMovePrev<CR>
nnoremap <leader>be :BufferLineSortByExtension<CR>
nnoremap <leader>bd :BufferLineSortByDirectory<CR>
nnoremap <leader>1 :BufferLineGoToBuffer 1<CR>
nnoremap <leader>2 :BufferLineGoToBuffer 2<CR>
nnoremap <leader>3 :BufferLineGoToBuffer 3<CR>
nnoremap <leader>4 :BufferLineGoToBuffer 4<CR>
nnoremap <leader>5 :BufferLineGoToBuffer 5<CR>
nnoremap <leader>6 :BufferLineGoToBuffer 6<CR>
nnoremap <leader>7 :BufferLineGoToBuffer 7<CR>
nnoremap <leader>8 :BufferLineGoToBuffer 8<CR>
nnoremap <leader>9 :BufferLineGoToBuffer 9<CR>
nnoremap <C-t>h :ToggleTerm<CR>
nnoremap <C-t>v :ToggleTerm size=60 direction=vertical<CR>
nnoremap <C-t>f :ToggleTerm direction=float<CR>
nnoremap <leader>gg :lua _lazygit_toggle()<CR>

" Some visual mode mappings
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>l
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>l
vnoremap <leader>( <esc>`<i(<esc>`>a)<esc>l
vnoremap <leader>[ <esc>`<i[<esc>`>a]<esc>l
vnoremap <leader>{ <esc>`<i{<esc>`>a}<esc>l

" Some insert mode mappings
inoremap jk <esc>
inoremap <C-d> <esc>ddi
inoremap <C-u> <esc>gUawea
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Some terminal mode mappings
tnoremap <esc> <C-\><C-n>
tnoremap jk <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
