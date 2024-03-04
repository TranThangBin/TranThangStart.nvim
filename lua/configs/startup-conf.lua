local dashboard = require("startup.themes.dashboard")

dashboard.header.content = {
    "████████╗████████╗██████╗    ███╗  ██╗██╗   ██╗██╗███╗   ███╗",
    "╚══██╔══╝╚══██╔══╝██╔══██╗   ████╗ ██║██║   ██║██║████╗ ████║",
    "   ██║      ██║   ██████╦╝   ██╔██╗██║╚██╗ ██╔╝██║██╔████╔██║",
    "   ██║      ██║   ██╔══██╗   ██║╚████║ ╚████╔╝ ██║██║╚██╔╝██║",
    "   ██║      ██║   ██████╦╝██╗██║ ╚███║  ╚██╔╝  ██║██║ ╚═╝ ██║",
    "   ╚═╝      ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚══╝   ╚═╝   ╚═╝╚═╝     ╚═╝",
}

dashboard.body.content = {
    { "    New File", "lua require'startup'.new_file()", "<leader>nf" },
    { "🖿    File Explorer", "Explore", "<leader>fe" },
    { "☰    Marked Files", 'lua require("harpoon.ui").toggle_quick_menu()', "<leader>hm" },
    { "    Git Status", "Git", "<leader>gs" },
    { "    Find File", "Telescope find_files", "<leader>ff" },
    { "󰍉    Find Word", "Telescope live_grep", "<leader>lg" },
    { "    Recent Files", "Telescope oldfiles", "<leader>of" },
}

return dashboard
