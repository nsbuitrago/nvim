-- smart splits
-- https://github.com/mrjones2014/smart-splits.nvim
return {
  'mrjones2014/smart-splits.nvim',
  lazy = false,
  config = function()
    require('smart-splits').setup {}
  end,
}
