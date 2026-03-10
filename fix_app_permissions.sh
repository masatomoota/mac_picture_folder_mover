#!/bin/zsh

# 引数として渡されたアプリのパスを取得
TARGET="$1"

# 引数がない場合は使い方を表示して終了
if [ -z "$TARGET" ]; then
    echo "使い方: $0 <アプリケーションのパス>"
    echo "例: $0 Photos_Safe.app"
    exit 1
fi

# 指定されたファイル・フォルダが存在するか確認
if [ ! -e "$TARGET" ]; then
    echo "エラー: 指定された項目 '$TARGET' が見つかりません。"
    exit 1
fi

echo "実行権限 (chmod -R 755) を付与しています: $TARGET"
chmod -R 755 "$TARGET"

echo "Macのセキュリティ制限（検疫属性）を解除しています: $TARGET"
xattr -rc "$TARGET"

# Finderに更新を通知
touch "$TARGET"

echo "完了しました！"
echo "'$TARGET' は正常に実行できる状態になっています。"
