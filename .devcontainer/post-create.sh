#!/bin/bash
set -e

# ヘッドレスJava GUIの依存関係(マイクラサーバー起動に必要)をインストール
echo "★ マイクラサーバーの起動に必要なパッケージをインストールしています..."
sudo apt-get update
sudo apt-get install -y libxext6 libxrender1 libxtst6 libxi6

# Gemini CLIをインストール
echo "★ Gemini CLIをインストールしています..."
npm install -g @google/gemini-cli

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

echo "★ セットアップスクリプトが完了しました。"
