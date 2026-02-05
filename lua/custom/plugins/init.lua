-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  {
    'preservim/nerdtree',
    keys = function()
      return {
        { '<leader>e', '<cmd>NERDTreeToggle<cr>', desc = 'Toggle File Tree' },
      }
    end,
  },
  {
    'ThePrimeagen/harpoon',
    keys = function()
      return {
        { '<leader>a', function() require('harpoon.mark').add_file() end, desc = 'Add file to Harpoon' },
        { '<leader>h', function() require('harpoon.ui').toggle_quick_menu() end, desc = 'Harpoon Toggle' },
        { '<C-h>', function() require('harpoon.ui').nav_file(1) end, desc = 'Harpoon Toggle' },
        { '<C-j>', function() require('harpoon.ui').nav_file(2) end, desc = 'Harpoon Toggle' },
        { '<C-k>', function() require('harpoon.ui').nav_file(3) end, desc = 'Harpoon Toggle' },
        { '<C-l>', function() require('harpoon.ui').nav_file(4) end, desc = 'Harpoon Toggle' },
      }
    end,
  },
}
