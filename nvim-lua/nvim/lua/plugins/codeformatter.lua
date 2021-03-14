local tempdir = "/tmp"

local remove_whitespace = {
  {cmd = {"sed -i 's/[ \t]+$//'"}}
}

local prettier = {
  {
    cmd = {
      function(file)
        local config = os.getenv("HOME") .. "/.config/nvim/.prettierrc"
        return string.format('prettier --config %s --tab-width %s -w "%s"', config, vim.bo.shiftwidth, file)
      end
    },
    tempfile_dir = tempdir
  }
}

-- vim.g.format_debug = true

require('format').setup {
    ['*'] = remove_whitespace,
    javascript = prettier,
    javascriptreact = prettier,
    typescript = prettier,
    typescriptreact = prettier,
    html = prettier,
    css = prettier,
    json = prettier,
}




