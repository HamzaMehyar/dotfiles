
set nocompatible
set encoding=utf-8
set spelllang=en_gb

" =====================================================================
"                                Hamza's vim settings
" =====================================================================

if filereadable(expand("~/.vim/cfg/bundles.vim"))
  source ~/.vim/cfg/bundles.vim
endif

if filereadable(expand("~/.vim/cfg/vim_settings.vim"))
  source ~/.vim/cfg/vim_settings.vim
endif

if filereadable(expand("~/.vim/cfg/bundle_settings.vim"))
  source ~/.vim/cfg/bundle_settings.vim
endif

if filereadable(expand("~/.vim/cfg/mappings.vim"))
  source ~/.vim/cfg/mappings.vim
endif

lua << EOF
local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})
EOF
