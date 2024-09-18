--- Con este plugin integramos un tema al nvim
return {
	"rebelot/kanagawa.nvim",
	--"TheNiteCoder/mountaineer.vim",

	lazy = false, -- para que se carge inmeditamente sino lo hara asincronica
	priority = 1000, -- para que se cargue antes de todos los demas files
	config = function() -- mediante esta funcion decimos que se carge el tema
		vim.cmd([[colorscheme kanagawa]])
	end,
	opts = {
		transparent_background = true,
	},
}
