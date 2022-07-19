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

- [公式サイト](https://karabiner-elements.pqrs.org/)からダウンロード、インストールする

```bash
cp ./karabiner/custom_key_bind.json ~/.config/karabiner/assets/complex_modifications/
```

- 英語／かな切り替え設定
  - [For Japanese （日本語環境向けの設定） (rev 6)](https://ke-complex-modifications.pqrs.org/#international)をImport
  - [コマンドキーを単体で押したときに、英数・かなキーを送信する。]をEnabledにする
- HHKBのFnキーが上書きされるのを防止
  - Karabiner-Elements > Function keys
    - [Use all F1, F2, etc. keys as standard function keys]をONにする
