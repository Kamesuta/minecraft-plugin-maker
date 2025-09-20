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

# コマンドのバリデーション
for cmd in "$@"; do
  if [[ "$cmd" == "reload" || "$cmd" == "reload confirm" ]]; then
    echo "Error: 'reload' or 'reload confirm' commands are not allowed. Use 'plugman reload <PluginName>' instead."
    exit 1
  fi
  if [[ "$cmd" == "stop" ]]; then
    echo "Error: 'stop' command is not allowed. To restart the server, you need to manually type 'stop' and then press F5."
    exit 1
  fi
done

# mcrconを実行
"$MCRCON_PATH" -p "$RCON_PASSWORD" "$@"
