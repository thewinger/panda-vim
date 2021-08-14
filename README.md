# panda-vim
[Panda](http://panda.siamak.work/) syntax colors for nvim to be used with [`colorbuddy`](https://github.com/tjdevries/colorbuddy.nvi).

![Screenshot of vim using panda sytax](screenshot.png)

## Installation

### With Plugin Manager

```vim
    " With Vim-Plug
    Plug 'tjdevries/colorbuddy.nvim'
    Plug 'thewinger/panda.nvim'

    " Enable the color scheme
    colorscheme panda
```

```lua
    -- Packer.nvim
    -- Where plugins are added
    use 'tjdevries/colorbuddy.nvim'
    use 'thewinger/panda.nvim'
```

```lua
    --  in your lua config
    require('colorbuddy').colorscheme('panda')
```
