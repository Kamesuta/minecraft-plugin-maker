# Minecraft Plugin AI Creator

GitHub Codespaceという無料の機能を使って、5分でブラウザ上で簡単が始められるテンプレートです。

## 1. GitHubのアカウントを作る
- Codespaceを使うためにはGitHubのアカウントが必要なので、ログインする。
- ない人は以下のサイトを参考に作る
	- [Githubアカウント作成方法 - Qiita](https://qiita.com/hanamr8ngineer/items/b62dc3b89d789250adbb)
## 2. Use Templateからプロジェクトを作る
<執筆中>
## 3. テンプレートからCodespaceを開く
- Codespaceっていう、クラウド上のPCで開発できる環境を使う
1. [GitHub - Kamesuta/minecraft-paper-plugin-vscode-template: マイクラPaperサーバーのプラグインをGitHub Codespaceで開発するためのテンプレート](https://github.com/Kamesuta/minecraft-paper-plugin-vscode-template)
2. 緑色の「Code」→「Codespace」タブ→「+」マークでCodespaceを作成
	![](/images/Minecraftプラグイン開発手順/2025-09-06_23h00_16.png)
## 4. プロジェクトができるまで待つ
5分くらいYouTubeでも見ながら待っててください。(※ネットが遅いと、もうちょい時間かかるかもです)
「★ Mavenのセットアップが完了しました。」が出たらOKです。
![](/images/Minecraftプラグイン開発手順/2025-09-06_231516.webp)

## 5. マイクラサーバーを起動する
1. F5を押します
2. するとマイクラサーバーが起動します。
3. 「Done (XX.XXXs)! For help, type "help"」って出れば起動完了です。
	![](/images/Minecraftプラグイン開発手順/2025-09-06_232117.png)	
> [!NOTE] Tips
> 右に出ている通知は関係ないので、「キャンセル」とバツで閉じてください

1. すると「マイクラサーバー起動」と「ポート開放 (Secure Share Net)」が同時に動き始めます
## なにかおかしい状態になった場合
コンソールの右のゴミ箱を押してやり直してください
## 6. ポートを開放する
GitHub Codespaceはそのままだとマイクラから接続できないので、ポートを開放する必要がある
今回は[Secure Share Net](https://manage.ssnetwork.io/)というサービスを使用して公開する
1. ターミナルの右にある「Open Port」を押し、コントロール
	![](/images/Minecraftプラグイン開発手順/2025-09-06_23h27_17.png)
2. ポート番号に「25565」と入れて「公開する」を押す
	![](/images/Minecraftプラグイン開発手順/2025-09-06_23h29_38%201.png)
> [!NOTE] 満員だったら・・？
> 満員だと「指定したサーバーは現在満員のため...」と出ます。
> 「公開番号」と「公開サーバー」を変えてもう一回試してみましょう。
> 全鯖埋まってる場合、ページ下部にある『 「時間制限付き招待キー」を誰でも発行できます』を押してキーを上部の招待キー欄にコピーするとうまくいきます。
3. IPをマイクラにコピペしたら入れるよ
	![](/images/Minecraftプラグイン開発手順/2025-09-06_23h37_43.png)

## 7. OPの付与
1. 右の「Start Server」を開くとマイクラのコンソールが開くの、OPコマンドを打って自分にOPを付与しよう
	![](/images/Minecraftプラグイン開発手順/2025-09-06_23h41_04.png)

## 8. プログラミングしてみよう

> [!NOTE] Gemini CLI/Gemini Code Assistantを使うためには18歳以上じゃないといけないらしいです。
> 子どもは大人しく親のアカウント借りてください
> 
> 既存のアカウントの年齢を変えると、年齢確認求められて詰むので要注意
## Geminiにログインする
1. 右下の「♦」ボタンを押す
	![](/images/Minecraftプラグイン開発手順/2025-09-06_23h48_19.png)
2. Sign inを押す
	![](/images/Minecraftプラグイン開発手順/2025-09-06_23h49_19.png)
3. コンソールにURLでるのでCtrl+クリック
	![](/images/Minecraftプラグイン開発手順/2025-09-06_23h50_49.png)
4. Googleアカウントでログイン
	![](/images/Minecraftプラグイン開発手順/2025-09-07_00h01_35.png)
5. 認証コードが出るので「Copy」ボタンでコピー
   ![](/images/Minecraftプラグイン開発手順/2025-09-06_23h50_11.png)
6. ターミナル上で右クリックするとペーストされる
	![](/images/Minecraftプラグイン開発手順/2025-09-06_23h51_59.png)
	クリップボードのアクセス権求められたら「許可」を押す
	![](/images/Minecraftプラグイン開発手順/2025-09-06_23h51_42.png)
7. ログインできたらこんな感じ
	![](/images/Minecraftプラグイン開発手順/2025-09-07_00h05_59.png)
