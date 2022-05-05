local status_ok= pcall(require, "luasnip")
if not status_ok then
	return
end

-- lazy loading of snippets
require("luasnip.loaders.from_vscode").lazy_load({
	paths =  "~/.config/nvim/lua/user/snippets/"
})
