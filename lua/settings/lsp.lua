local lsp = require('lsp-setup')
local utils = require('lsp-setup.utils')

lsp.setup({
	default_mappings = true,
	on_attach = function (client, bufnr)
		utils.format_on_save(client)
	end,
	capabilities = vim.lsp.protocol.make_client_capabilities(),
	servers = {
		pyright = {},
		tsserver = {},
		sumneko_lua = {},
		yamlls = {},
		vimls = {},
		terraformls = {},
		tailwindcss = {},
		rust_analyzer = {},
		jsonls = {},
		html = {},
		cssls = {},
		bashls = {},
		awk_ls = {},
	}
})
