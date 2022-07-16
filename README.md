# linux用設定ファイル

## .zsh

### .zshrc

```bash
# 以下を追記
[ -f ~/data/settings/linux-config/shell/.zshrc_custom ] && source ~/data/settings/linux-config/shell/.zshrc_custom
```

### .zprofile

```bash
# 以下を追記
[ -f ~/data/settings/linux-config/shell/.zprofile_custom ] && source ~/data/settings/linux-config/shell/.zprofile_custom
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

[公式サイト](https://karabiner-elements.pqrs.org/)からダウンロードする

```bash
cp ./karabiner/custom_key_bind.json ~/.config/karabiner/assets/complex_modifications/
```
