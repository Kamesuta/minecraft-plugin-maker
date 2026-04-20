#!/usr/bin/env bash
# Mavenパッケージングとプラグインコピーの実行
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$ROOT_DIR"

# Mavenでプロジェクトをパッケージ化し、成功すればプラグインをコピー
mvn package && "$SCRIPT_DIR/copy_plugin.sh"
