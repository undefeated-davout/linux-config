# linux用設定ファイル

## .zsh

### .zshrc

```bash
# 以下を追記
[ -f ~/work/repo/github.com/undefeated-davout/linux-config/shell/.zshrc_custom ] && source ~/work/repo/github.com/undefeated-davout/linux-config/shell/.zshrc_custom
```

### .zprofile

```bash
# 以下を追記
[ -f ~/work/repo/github.com/undefeated-davout/linux-config/shell/.zprofile_custom ] && source ~/work/repo/github.com/undefeated-davout/linux-config/shell/.zprofile_custom
```

## VS Code

```bash
cp ./vscode_settings/go.json ~/Library/Application\ Support/Code/User/snippets/
cp ./vscode_settings/keybindings.json ~/Library/Application\ Support/Code/User/
cp ./vscode_settings/settings.json ~/Library/Application\ Support/Code/User/
```

## vim

```bash
cp .vimrc ~/
```

## yabai

```bash
cp .yabairc ~/
brew services restart yabai
```

## skhd

```bash
cp .skhdrc ~/
brew services restart skhd
```

## Karabiner-Elements

- [公式サイト](https://karabiner-elements.pqrs.org/)からダウンロード、インストールする

```bash
cp ./karabiner/custom_key_bind.json ~/.config/karabiner/assets/complex_modifications/
```

- HHKBのFnキーが上書きされるのを防止
  - Karabiner-Elements > Function keys
    - [Use all F1, F2, etc. keys as standard function keys]をONにする
- Caps Lock→Control（Macの設定だけだと、KarabinerでのCtrl+○設定が効かない）
  - Simple Modifications > Apple Internal Keyboard
    - Add item: caps_lock → left_control
