--- Name: cm4
--- Description: Theme inspired by Casey Muratori's 4coder theme
--- Author: Ebz 
--- License:

vim.opt.background = "dark"
vim.cmd.source("$VIMRUNTIME/colors/default.vim")
vim.g.colors_name = "cm4"

local colors = {
    dblue = "#1f1f27",
    orange = "#cb9401",
    green = "#70971e",
    background = "#0c0c0c",
    lime = "#00ff00",
    black = "#000000",
    dblue2 = "#171e20",
    gblue = "#2d3640",
    lgblue = "#315268",
    yellow = "#c4b82b",
    dgray = "#494949",
    lbrown = "#a08563",
    gray = "#686868",
    dorange = "#ac7b0b",
    green2 = "#6b8e23",
    tan = "#dab98f",
    red = "#ff0000",
    dbrown = "#5b4d3c",
    deepred = "#3a0000",
    dteal = "#003a3a",
    lorange = "#ffbb00",
    violet = "#80005d",
    dgblue = "#222425",
    dgblue2 = "#1e1f20",
    black2 = "#101010",
    dgray2 = "#404040",
    orange2 = "#d8a51d",
    brick = "#cc5735",
    teal = "#478980",
    lime2 = "#23de33",
    brown = "#907553",
    brown2 = "#b09573",
    palegreen = "#9ba290",
    hotpink = "#e23680",
    orange3 = "#efaf2f",
}

local terminal_colors = {
    
}

for idx, color in pairs(terminal_colors) do
    vim.g["terminal_color_" .. tostring(idx)] = color
end

local highlight_groups = {

}

for group, attributes in pairs(highlight_groups) do
    vim.api.nvim_set_hl(0, group, attributes)
end
