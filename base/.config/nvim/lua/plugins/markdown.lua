return {
  {
    'MeanderingProgrammer/render-markdown.nvim',

    opts = {
      heading = { enabled = false },
    },

    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
    keys = {
      { '<leader>mp', ':MarkdownPreviewToggle<CR>' },
    },
  },
}
