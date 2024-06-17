return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "\\", ":Neotree reveal<CR>", { desc = "NeoTree reveal" } },
  },
  opts = {
    event_handlers = {
      {
        event = "file_opened",
        handler = function(_)
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },
    filesystem = {
      window = {
        position = "right",
        mappings = {
          ["\\"] = "close_window",
        },
      },
    },
  },
}
