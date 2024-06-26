return {
  {
    'LunarVim/bigfile.nvim',
    lazy = true,
    cond = not vim.g.vscode,
    event = 'BufRead',
  },
  {
    'tpope/vim-surround',
    lazy = true,
    event = 'BufEnter',
  },
  {
    'sQVe/sort.nvim',
    lazy = true,
    event = 'BufEnter',
  },
  {
    'gregorias/coerce.nvim',
    tag = 'v1.0',
    lazy = true,
    event = 'BufEnter',
    config = true,
  },
  {
    'smoka7/hop.nvim',
    lazy = true,
    event = { 'BufEnter', 'BufNewFile' },
    version = '*',
    opts = {
      keys = 'etovxqpdygfblzhckisuran',
    },
    config = true,
    keys = {
      { "<Leader>'", '<Cmd>HopWord<CR>', desc = 'Hop word', mode = 'n' },
    },
  },
  {
    'folke/ts-comments.nvim',
    lazy = true,
    event = 'VeryLazy',
    opts = {},
  },
  {
    'famiu/bufdelete.nvim',
    cmd = 'Bdelete',
    keys = {
      { '<Leader>c', '<Cmd>Bdelete<CR>', desc = 'Close buffer', mode = 'n' },
      {
        '<Leader>q',
        function()
          vim.cmd 'qa'
        end,
        desc = 'Close all buffers',
        mode = 'n',
      },
    },
  },
  {
    'tummetott/unimpaired.nvim',
    event = 'VeryLazy',
    opts = {
      keymaps = {
        bnext = {
          mapping = '<leader>l',
          description = 'Go to [count] next buffer',
          dot_repeat = true,
        },
        bprevious = {
          mapping = '<leader>h',
          description = 'Go to [count] previous buffer',
          dot_repeat = true,
        },
        bfirst = {
          mapping = '<leader>L',
          description = 'Go to last buffer',
        },
        blast = {
          mapping = '<leader>l',
          description = 'Go to first buffer',
        },
      },
    },
  },
  {
    'Wansmer/treesj',
    dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
    config = function()
      require('treesj').setup {
        use_default_keymaps = false,
      }
    end,
    keys = {
      { '<leader>j', '<Cmd>TSJToggle<CR>', { desc = 'Toggle SJ split' } },
    },
  },
}
