#!/bin/bash
# MinecraftサーバーにRCON (Remote Console) 経由でコマンドを送信するためのスクリプト
set -e

# RCONのパスワードを設定
# このパスワードは、`run/server.properties` ファイル内の `rcon.password` の設定と一致している必要がある
RCON_PASSWORD="gemini"

# mcrconユーティリティへのパスを定義
# このスクリプトと同じディレクトリにあるmcrconバイナリを使用
MCRCON_PATH="$(dirname "$0")/mcrcon"

# 引数が指定されていない場合、スクリプトの正しい使い方を表示して終了
if [ $# -eq 0 ]; then
  echo "使い方: $(basename "$0") <コマンド>"
  echo "MinecraftサーバーにRCON経由でコマンドを送信します。"
  exit 1
fi

# 送信するコマンドのバリデーションを行う
# stop だけは禁止しておく
cmd="$*"
if [[ "$cmd" == "stop" ]]; then
  echo "Error: 'stop' command is not allowed. To restart the server, you need to manually type 'stop' and then press F5."
  exit 1
fi

# mcrconを実行
"$MCRCON_PATH" -p "$RCON_PASSWORD" "$*"