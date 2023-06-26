-- Key maps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>o', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>h', builtin.oldfiles, {})

vim.keymap.set('n', '<leader>P', function()
	builtin.find_files({ no_ignore = true, prompt_title = 'All Files' })
end)
vim.keymap.set('n', '<leader>f', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- Config
local actions = require('telescope.actions')
vim.cmd([[
	highlight link TelescopePromptTitle PMenuSel
	highlight link TelescopePreviewTitle PMenuSel
	highlight link TelescopePromptBorder FloatBorder
	highlight link TelescopeNormal CursorLine
	highlight link TelescopeBorder CursorLineBg
]])

require('telescope').setup({
	defaults = {
		path_display = { truncate = 1 },
		-- selection_caret = ' ',
		layout_config = {
			prompt_position = 'top',
		},
		sorting_strategy = 'ascending',
		mappings = {
			i = {
				['<esc>'] = actions.close,
				-- The below two mappings don't seem to work on Mac
				['<C-Down>'] = actions.cycle_history_next,
				['<C-Up>'] = actions.cycle_history_prev,
			}
		},
		file_ignore_patterns = { '.git/' }
	},
	pickers = {
		find_files = {
			hidden = true
		},
		oldfiles = {
			prompt_title = 'History'
		}
	}
})

require('telescope').load_extension('fzf')
require('telescope').load_extension('live_grep_args')
