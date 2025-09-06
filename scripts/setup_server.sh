#!/bin/bash
set -e

# このスクリプトは、マインクラフトサーバーの実行環境をセットアップします。
# テンプレートファイルをコピーし、PaperMCサーバーが存在しない場合にダウンロードします。

# runディレクトリが存在しない場合、テンプレートからセットアップ
if [ ! -d "./run" ]; then
    echo "★ テンプレートからマイクラサーバー実行環境を作成しています..."
    cp -rn ./run-template ./run
fi

# PaperMCサーバーのjarファイルが存在しない場合、ダウンロード
if [ ! -f "./run/paper.jar" ]; then
    echo "★ PaperMCサーバーをダウンロードしています..."
    wget https://api.papermc.io/v2/projects/paper/versions/1.21.8/builds/56/downloads/paper-1.21.8-56.jar -O ./run/paper.jar
else
    echo "★ PaperMCサーバーは既に存在します。"
fi

echo "★ サーバーのセットアップが完了しました。"