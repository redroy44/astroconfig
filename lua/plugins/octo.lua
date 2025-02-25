return { 'pwntester/octo.nvim', 
  config = function()
    require"octo".setup({
      ssh_aliases = {["github-work.com"] = "github.com"},
    --   github_hostname = "github.com",
    });
  end;
}