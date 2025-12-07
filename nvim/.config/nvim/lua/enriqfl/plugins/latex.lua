return {
  'lervag/vimtex',
  lazy = false,
  config = function()
    -- VimTeX basic options
    vim.g.vimtex_enabled = 1

    -- Zathura as PDF viewer by default
    vim.g.vimtex_view_method = 'zathura'
   
    -- Initializes viewer in continuous mode (updates on save)
    vim.g.vimtex_view_automatic = 1

    -- Initializes continuous compilation when opening file .tex
    vim.g.vimtex_compiler_automatic = 1
    
    -- This makes VimTex compile when saving the file
    vim.g.vimtex_compiler_progname = 'nvr'

    -- Hides VimTex messages when opening
    vim.g.vimtex_log_enabled = 0

    -- Compiler configuration. latexmk is highly recommended
    -- as it handles multiple compilations automatically.

    vim.g.vimtex_compiler_method = 'latexmk'
  end,
}
