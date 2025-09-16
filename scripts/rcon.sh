#!/bin/bash

# RCONのパスワードを設定
# run/server.propertiesのrcon.passwordと合わせてください
RCON_PASSWORD="gemini"

# mcrconのパス
MCRCON_PATH="$(dirname "$0")/mcrcon"

# 引数がなければ使い方を表示
if [ $# -eq 0 ]; then
  echo "使い方: $0 \"コマンド1\" \"コマンド2\" ..."
  echo "MinecraftサーバーにRCON経由でコマンドを送信します。"
  exit 1
fi

# mcrconを実行
"$MCRCON_PATH" -p "$RCON_PASSWORD" "$@"
