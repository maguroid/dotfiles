vim.cmd 'let g:firenvim_config = { "globalSettings": {"alt": "all",}, "localSettings": {".*": {"selector": \'textarea:not([readonly]), div[role="textbox"], div[id="editor"]\', } } }'

vim.cmd 'let fc = g:firenvim_config["localSettings"]'
vim.cmd 'let fc["https?://scrapbox.io/"] = { "takeover": "never", "priority": 1 }'
