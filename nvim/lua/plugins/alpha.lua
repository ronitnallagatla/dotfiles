return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[                                                  
                               __                
  ___      __    ___   __  __ /\_\    ___ ___    
/' _ `\  /'__`\ / __`\/\ \/\ \\/\ \ /' __` __`\  
/\ \/\ \/\  __//\ \L\ \ \ \_/ |\ \ \/\ \/\ \/\ \ 
\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\
 \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/
                                                 
                                                 
            [ @ronitnallagatla ]
    ]]
    opts.section.header.val = vim.split(logo, "\n", { triempty = true})
  end,
}
