require('telescope').setup{
    defaults = {}
}

local functions = {}

functions.find_file = function()
    local opt = require('telescope.themes').get_dropdown({previewer=false})
    require('telescope.builtin').find_files(opt)
end


functions.find_in_file = function()
    local opt = require('telescope.themes').get_ivy()
    require('telescope.builtin').current_buffer_fuzzy_find(opt)
end


functions.find_in_files = function ()
    require('telescope.builtin').live_grep()
end

return functions

