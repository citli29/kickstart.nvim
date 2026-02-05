-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- Default kickstart plugins
-- NMAC427/guess-indent.nvim
--lewis6991/gitsigns.nvim
--folke/which-key.nvim
--nvim-telescope/telescope.nvim
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'java',
  callback = function() require('custom.plugins.jdtls.jdtls_setup').setup {} end,
})
--require('lazy').setup {
--{ 'nvim-treesitter/nvim-treesitter', branch = 'master', lazy = false, build = ':TSUpdate' },
--}
return {
  {
    'preservim/nerdtree',
    keys = function()
      return {
        { '<leader>E', '<cmd>NERDTreeToggle<cr>', desc = 'Toggle File Tree' },
        { '<leader>e', '<cmd>NERDTreeFocus<cr>', desc = 'Toggle File Tree' },
      }
    end,
  },
  {
    'ThePrimeagen/harpoon',
    keys = function()
      return {
        { '<leader>a', function() require('harpoon.mark').add_file() end, desc = 'Add file to Harpoon' },
        { '<leader>h', function() require('harpoon.ui').toggle_quick_menu() end, desc = 'Harpoon Toggle' },
        { '<A-h>', function() require('harpoon.ui').nav_file(1) end, desc = 'Harpoon Toggle' },
        { '<A-j>', function() require('harpoon.ui').nav_file(2) end, desc = 'Harpoon Toggle' },
        { '<A-k>', function() require('harpoon.ui').nav_file(3) end, desc = 'Harpoon Toggle' },
        { '<A-l>', function() require('harpoon.ui').nav_file(4) end, desc = 'Harpoon Toggle' },
      }
    end,
  },
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {
      automatic_enable = { exclude = { 'jdtls' } },
    },
  },
  {
    'mfussenegger/nvim-jdtls',
  },
}
