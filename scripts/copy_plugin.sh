#!/bin/bash
set -e

# このスクリプトは、targetディレクトリにビルドされたJARファイルを run/plugins/Plugin.jar としてコピーします。

# targetディレクトリからJARファイルを探します（original-*.jarなどを除外）。
SOURCE_JAR=$(find target -maxdepth 1 -name "*.jar" ! -name "original-*.jar" -printf '%T@ %p\n' | sort -n -r | head -n 1 | cut -d' ' -f2-)

DEST_JAR="run/plugins/Plugin.jar"

if [ -f "$SOURCE_JAR" ]; then
    cp "$SOURCE_JAR" "$DEST_JAR"
    echo "★ プラグインをコピーしました: $SOURCE_JAR -> $DEST_JAR"
else
    echo "★ エラー: JARファイルがtargetディレクトリに見つかりません。先にビルドを実行してください。"
    exit 1
fi
