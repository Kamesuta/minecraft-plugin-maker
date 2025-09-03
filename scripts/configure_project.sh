#!/bin/bash
set -e

echo "★ Mavenの依存関係をセットアップしています..."
mvn dependency:go-offline
echo "★ Mavenのセットアップが完了しました。"
