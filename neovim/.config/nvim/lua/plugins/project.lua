return {
  "ahmedkhalf/project.nvim",
  enabled = true,
  main = "project_nvim",
  opts = {
    detection_methods = { "pattern" },
    
    -- All the patterns used to detect root dir, when **"pattern"** is in
    -- detection_methods
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
    
    -- Path where project.nvim will store the project history for use in
    -- telescope
    datapath = vim.fn.stdpath("data"),
  }
}
