# SETTING FILES FOR LINUX

## copy configs

```bash
cp -r ./configs/ ~/
```

## .zsh

```bash
# .zshrc
# add the following code
source ~/data/repo/github.com/undefeated-davout/linux-config/shell/.zshrc_custom

# .zprofile
# add the following code
source ~/data/repo/github.com/undefeated-davout/linux-config/shell/.zprofile_custom
```

## VS Code

```bash
cp ./vscode_settings/go.json ~/Library/Application\ Support/Code/User/snippets/
cp ./vscode_settings/keybindings.json ~/Library/Application\ Support/Code/User/
cp ./vscode_settings/settings.json ~/Library/Application\ Support/Code/User/
```

## yabai

```bash
cp -r ./configs/ ~/ && yabai --restart-service
```

## skhd

```bash
cp -r ./configs/ ~/ && skhd --restart-service
```

## Karabiner-Elements

- [公式サイト](https://karabiner-elements.pqrs.org/)からダウンロード、インストールする

```bash
cp -r ./karabiner/ ~/.config/karabiner/assets/complex_modifications/
```

- HHKBのFnキーが上書きされるのを防止
  - Karabiner-Elements > Function keys
    - [Use all F1, F2, etc. keys as standard function keys]をONにする
- Caps Lock→Control（Macの設定だけだと、KarabinerでのCtrl+○設定が効かない）
  - Simple Modifications > Apple Internal Keyboard
    - Add item: caps_lock → left_control
