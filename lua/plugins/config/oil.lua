local git_ignored = setmetatable({}, {
  __index = function(self, key)
    local proc = vim.system(
      { "git", "ls-files", "--ignored", "--exclude-standard", "--others", "--directory" },
      {
        cwd = key,
        text = true,
      }
    )
    local result = proc:wait()
    local ret = {}
    if result.code == 0 then
      for line in vim.gsplit(result.stdout, "\n", { plain = true, trimempty = true }) do
        -- Remove trailing slash
        line = line:gsub("/$", "")
        table.insert(ret, line)
      end
    end

    rawset(self, key, ret)
    return ret
  end,
})

local detail = false

return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true,
    delete_to_trash = true,
    skip_confirm_for_simp_edits = true,
    view_options = {
      is_hidden_file = function(name, _)
      local dir = require("oil").get_current_dir()
      -- if no local directory (e.g. for ssh connections), always show
      if not dir then
        return false
      end
      -- Check if file is gitignored
      return vim.list_contains(git_ignored[dir], name)
    end,
    },
    keymaps = {
    ["gd"] = {
      desc = "Toggle file detail view",
      callback = function()
        detail = not detail
        if detail then
          require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
        else
          require("oil").set_columns({ "icon" })
        end
      end,
    },
  },
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
}
