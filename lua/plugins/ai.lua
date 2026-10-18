return {
  {
    "milanglacier/minuet-ai.nvim",
    event = "InsertEnter",
    lazy = false,
    config = function()
      require("minuet").setup({
        provider = "openai_fim_compatible",
        n_completions = 1,
        context_window = 512,
        request_timeout = 3,

        notify = false,

        provider_options = {
          openai_fim_compatible = {
            api_key = "TERM",
            name = "Llama.cpp",
            end_point = "http://127.0.0.1:8028/v1/completions",

            -- llama.cpp chooses the actual model.
            model = "PLACEHOLDER",

            stream = false,

            optional = {
              max_tokens = 56,
              top_p = 0.9,
            },

            template = {
              prompt = function(before, after, _)
                return "<|fim_prefix|>" .. before .. "<|fim_suffix|>" .. after .. "<|fim_middle|>"
              end,

              suffix = false,
            },
          },
        },

        virtualtext = {
          auto_trigger_ft = { "python", "c", "cpp", "java" },

          keymap = {
            accept = "<C-x>",
            accept_line = "<C-j>",
            next = "<C-n>",
            prev = "<C-p>",
            dismiss = "<C-e>",
          },
        },
      })
    end,
  },

  {
    {
      "olimorris/codecompanion.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      },
      opts = {

        adapters = {
          http = {
            ["llama.cpp"] = function()
              return require("codecompanion.adapters").extend("openai_compatible", {
                env = {
                  url = "http://127.0.0.1:8029",
                  api_key = "TERM",
                  chat_url = "/v1/chat/completions",
                },
              })
            end,
          },
        },

        interactions = {
          chat = {
            adapter = "llama.cpp",
            opts = {
              system_prompt = "You are a expert engineer working with a user as a assistant. Your job is to create minimal, but understandable and professional responses regarding the user's question or request. During your thinking process keep the thinking relatively short, straight forward and do not worry about every small detail. Do not put explanations when not needed (e.g. when showing the correct code or answer). The user has to ask for the explanation specifically and only then explain the problem. When being exposed with a task that requires explanation (directly asked by a user), keep it minimal and short while being understandable. Whenever there are multiple possible solutions to a problem, use the most practical one or show the most important ones. Avoid solutions that are in general inferior to others. Output concise responses, prioritize essential information in your response. Your tone should sound technical / professional, however you are free to change it a bit at times.",
            },
          },

          inline = {
            adapter = "llama.cpp",
          },
        },
      },
    },
  },
}
