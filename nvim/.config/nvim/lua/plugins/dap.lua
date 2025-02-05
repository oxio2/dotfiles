return {
  {
    "mfussenegger/nvim-dap", -- Core debugging plugin
    dependencies = {
      "rcarriga/nvim-dap-ui", -- Debugger UI plugin
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      -- Configure the coreclr adapter for debugging .NET Core
      dap.adapters.coreclr = {
        type = "executable",
        command = "netcoredbg", -- Ensure the correct path to netcoredbg
        args = { "--interpreter=vscode" },
      }

      -- Configuration for launching a .NET Core app
      dap.configurations.cs = {
        {
          type = "coreclr",
          name = "launch - netcoredbg",
          request = "launch",
          program = function()
            return vim.fn.input("Path to dll", vim.fn.getcwd() .. "/bin/Debug/net9.0/", "file")
          end,
        },
      }

      -- Automatically open dap-ui after initializing
      dap.listeners.after["event_initialized"]["dapui_config"] = function()
        dapui.open()
      end

      -- Close dap-ui when the debug session is terminated or exited
      dap.listeners.before["event_terminated"]["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before["event_exited"]["dapui_config"] = function()
        dapui.close()
      end

      -- Initialize dap-ui
      dapui.setup()
    end,
  },
}
