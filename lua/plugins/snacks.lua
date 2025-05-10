return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = [[
▄▄▄▄  ▗▞▀▚▖▄▄▄▄  ▄   ▄ ▄ ▄▄▄▄  
█   █ ▐▛▀▀▘█   █ █   █ ▄ █ █ █ 
█   █ ▝▚▄▄▖█▄▄▄▀  ▀▄▀  █ █   █ 
           █           █       
           ▀                   
 ]],
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
