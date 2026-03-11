# TODO

## Plan
- [x] リポジトリと既存実装を確認し、選択ダイアログが `.photoslibrary` を正しく扱えていない原因を特定する
- [x] `Photos_Safe.app/Contents/document.wflow` の選択処理を修正し、`.photoslibrary` パッケージを選択できるようにする
- [x] README と引き継ぎ資料の説明を実装に合わせて更新する
- [x] 構文確認と差分確認を行い、結果をレビューに記録する

## Review
- [x] `plutil -lint Photos_Safe.app/Contents/document.wflow` で workflow plist の妥当性を確認
- [x] `zsh -n fix_app_permissions.sh` と workflow 内シェルの `zsh -n` で構文確認
- [x] `resolve_photo_library_path` を一時ディレクトリで検証し、`.photoslibrary` 本体・内部サブフォルダー・親フォルダーから正しく解決できることを確認
- [x] `./fix_app_permissions.sh Photos_Safe.app` 実行後に `codesign --verify --deep --strict Photos_Safe.app` が成功することを確認
