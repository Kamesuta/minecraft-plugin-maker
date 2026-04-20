#!/usr/bin/env bash
# ビルド済みプラグインJARファイルのコピー
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$ROOT_DIR"

# targetディレクトリから最新のJARファイルを検索（original-*.jarは除外）
SOURCE_JAR=$(find target -maxdepth 1 -type f -name "*.jar" ! -name "original-*.jar" -print0 | xargs -0 ls -t | head -n 1)

# コピー先パス
DEST_JAR="run/plugins/Plugin.jar"

# ソースJARファイルの存在確認とコピー実行
if [ -n "$SOURCE_JAR" ] && [ -f "$SOURCE_JAR" ]; then
    cp "$SOURCE_JAR" "$DEST_JAR"
    echo "★ プラグインをコピーしました: $SOURCE_JAR -> $DEST_JAR"
else
    # JARファイルが見つからない場合のエラーと終了
    echo "★ エラー: JARファイルがtargetディレクトリに未検出。ビルド実行を推奨。"
    exit 1
fi
