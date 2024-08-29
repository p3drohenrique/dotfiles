---@return string[]
local function get_abs_deno_enable_paths()
  ---@type string[]
  local deno_enable_paths = {}
  vim.list_extend(deno_enable_paths, require("neoconf").get("vscode.deno.enablePaths") or {})
  vim.list_extend(deno_enable_paths, (require("neoconf").get("lspconfig.denols") or {})["deno.enablePaths"] or {})

  local unique_deno_enable_paths = {}
  for _, unexpanded_path in ipairs(deno_enable_paths) do
    ---@type string[]
    expanded_paths = vim.fn.expand(unexpanded_path, nil, true)
    for _, path in ipairs(expanded_paths) do
      unique_deno_enable_paths[vim.fn.fnamemodify(path, ":p")] = true
    end
  end

  return vim.tbl_keys(unique_deno_enable_paths)
end

---@param filename string
local function is_deno_enabled_file(filename)
  local file_path = vim.fn.fnamemodify(filename, ":p")
  for _, path in ipairs(get_abs_deno_enable_paths()) do
    local match = string.find(file_path, path, 1, true)
    if match then
      return true
    end
  end

  return false
end

return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      return vim.tbl_deep_extend("force", opts, {
        inlay_hints = {
          enabled = false,
        },
        setup = {
          vtsls = function(_, opts)
            opts.single_file_support = false
            opts.root_dir = function(filename)
              if is_deno_enabled_file(filename) then
                return nil
              end
              return require("lspconfig.util").root_pattern("package.json")(filename)
            end
          end,
        },
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "luacheck",
        "shfmt",
        "tailwindcss-language-server",
        "css-lsp",
        "deno",
        "vtsls",
      })
    end,
  },
}
