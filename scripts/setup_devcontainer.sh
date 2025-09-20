#!/bin/bash
set -e

# scriptsフォルダ内のすべてのスクリプトに実行権限を付与
echo "★ scriptsフォルダ内のスクリプトに実行権限を付与しています..."
chmod +x scripts/*

# ヘッドレスJava GUIの依存関係(マイクラサーバー起動に必要)をインストール
echo "★ マイクラサーバーの起動に必要なパッケージをインストールしています..."
sudo apt-get update
sudo apt-get install -y libxext6 libxrender1 libxtst6 libxi6

# Gemini CLIをインストール
echo "★ Gemini CLIをインストールしています..."
npm install -g @google/gemini-cli
# Gemini CLIがVSCodeに接続できない不具合ワークアラウンド
# https://github.com/google-gemini/gemini-cli/issues/6297#issuecomment-3227097271
echo "127.0.0.1 host.docker.internal" | sudo tee -a /etc/hosts

# Set up the Minecraft server environment
setup_server.sh



echo "★ セットアップスクリプトが完了しました。"
