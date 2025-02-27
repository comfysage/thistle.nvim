local h = require("mossy.helpers")

return {
	cmd = "prettier",
	args = function(params)
		local filename = vim.api.nvim_buf_get_name(params.buf)
		return h.make_args_range({
			"--stdin-filepath",
			filename,
		}, "--range-start", "--range-end", { row_offset = -1, col_offset = -1 })
	end,
}
