# nvim
My Neovim Configuration

### Installing NerdFonts for ChromeOS Terminal App
[Source of fix](https://github.com/ryanoasis/nerd-fonts/issues/345#issuecomment-961718662)

Ctrl+Shift+J to open dev console, input following code to get NERD font support. (tested on ChromeOS 94 Linux terminal)

Then run the following commands in console
```
term_.prefs_.set('font-family', 'DejaVu Sans Mono Nerd');
term_.prefs_.set('user-css-text', '@font-face {font-family: "DejaVu Sans Mono Nerd"; src: url("https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.ttf"); font-weight: normal; font-style: normal;}')
```
