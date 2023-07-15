return { 
  { 
    "CRAG666/code_runner.nvim", 
    config = true,
    filetype = {
      go = {
        "cd $dir &&",
        "go run $fileName"
      }
    }
  },
}