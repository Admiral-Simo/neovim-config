function GenerateGettersSetters()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false) -- Get all lines in the file
    local output = {} -- Stores the final lines of the file
    local methods = {} -- Stores generated getter and setter methods

    for _, line in ipairs(lines) do
        table.insert(output, line) -- Preserve existing lines

        local type, name = line:match("private%s+(%S+)%s+(%S+);") -- Match private attributes
        if type and name then
            local capitalized_name = name:gsub("^%l", string.upper) -- Capitalize first letter

            -- Generate getter
            table.insert(methods, "")
            table.insert(methods, "    public " .. type .. " get" .. capitalized_name .. "() {")
            table.insert(methods, "        return " .. name .. ";")
            table.insert(methods, "    }")

            -- Generate setter
            table.insert(methods, "")
            table.insert(methods, "    public void set" .. capitalized_name .. "(" .. type .. " " .. name .. ") {")
            table.insert(methods, "        this." .. name .. " = " .. name .. ";")
            table.insert(methods, "    }")
        end
    end

    -- Add methods at the end of the file with a newline between them
    for _, method in ipairs(methods) do
        table.insert(output, method)
    end

    vim.api.nvim_buf_set_lines(0, 0, -1, false, output) -- Update the buffer
end

vim.api.nvim_set_keymap('n', '@g', ':lua GenerateGettersSetters()<CR>', { noremap = true, silent = true })
