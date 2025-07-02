~/.config/nvim
├── lua/
│   ├── configs/          # → Plugin-spezifische Konfigurationen
│   │   ├── lsp.lua
│   │   ├── cmp.lua
│   │   ├── barbar.lua
│   │   └── ...
│   ├── core/             # → Grundlegende Core-Configs
│   │   ├── keymaps.lua
│   │   ├── options.lua
│   │   ├── autocmds.lua
│   │   └── init.lua      # -> require alle core-Files
│   ├── plugins/          # → Lazy.nvim Plugin-Definitionen
│   │   ├── init.lua      # -> Lazy.setup(require("plugins.specs"))
│   │   └── specs.lua     # -> return { list of plugin specs }
│   ├── utils/            # → Hilfsfunktionen, z. B. für logging, LSP, etc.
│   │   └── colors.lua
│   └── init.lua          # → Einstiegspunkt (require core/init & plugins/init)
├── after/
│   └── plugin/           # → Späte Overrides, wie Farben/Highlighting
│       └── highlights.lua
└── stylua.toml           # optional: Code formatting rules

