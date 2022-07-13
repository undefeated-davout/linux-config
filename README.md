# linux用設定ファイル

## .zsh

### .zshrc

```bash
# 以下を追記
[ -f ~/data/settings/linux-config/mac/.zshrc_custom ] && source ~/data/settings/linux-config/mac/.zshrc_custom
```

### .zprofile

```bash
# 以下を追記
[ -f ~/data/settings/linux-config/mac/.zprofile_custom ] && source ~/data/settings/linux-config/mac/.zprofile_custom
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
