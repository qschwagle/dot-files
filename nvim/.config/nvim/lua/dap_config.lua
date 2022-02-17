local dap = require('dap')

dap.adapters.lldb = {
    type = 'executable',
    command = '/opt/homebrew/opt/llvm/bin/lldb-vscode',
    --command = '/usr/bin/lldb-vscode', -- adjust as needed
    name = "lldb"
}

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "lldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},

    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    runInTerminal = false,
    env = function()
      local variables = {}
      for k, v in pairs(vim.fn.environ()) do
        table.insert(variables, string.format("%s=%s", k, v))
      end
      return variables
    end,
  },
}

-- If you want to use this for rust and c, add something like this:

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

-- short cuts 

helpers = require('helpers')

helpers.map("n", "<LEADER>gb", ":lua require'dap'.toggle_breakpoint()<CR>", {})
helpers.map("n", "<LEADER>gn", ":lua require'dap'.step_over()<CR>", {})
helpers.map("n", "<LEADER>gi", ":lua require'dap'.step_into()<CR>", {})
helpers.map("n", "<LEADER>gc", ":lua require'dap'.continue()<CR>", {})
helpers.map("n", "<LEADER>go", ":lua require'dap'.repl.open()<CR>", {})
