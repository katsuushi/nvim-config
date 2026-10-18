return {
  {
    "okuuva/auto-save.nvim",
    opts = {
      enabled = true,
      trigger_events = {
        immediate_save = { "BufLeave" },
        defer_save = { "InsertLeave", "TextChanged" },
        cancel_deferred_save = { "InsertEnter" },
      },
    },
  },
}
