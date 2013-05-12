Problem 04: Sudoku Solver
===========================

午後のセッションでは、数独を作ってみましょう。基本問題が出来たグループは、応用問題にチャレンジしてみてください :-)

## Git/GitHubの準備

### 1. [Gitをダウンロード＆インストール](http://git-scm.com/downloads)し、ターミナル上で`git`コマンドが使えるようにしてください。

	```
	例：
	/Users/yasulab/github-clones% git --version
	git version 1.7.10.2 (Apple Git-33)
	```

### 2. [GitHub](https://github.com/)のウェブサイトへ行き，GitHubアカウントを作成してください．

	![GitHub Landing Page](https://dl.dropboxusercontent.com/u/2819285/github_landing-page.png)

準備が終わった（あるいは既に終わっていた）ら、次に進んでください。


## 問題の取得＆提出の仕方

各グループが最終的に提出したコードを一覧出来るように、次の手順に沿って、問題をダウンロード＆提出してください。

### 1. 該当するリポジトリをコピー（fork）します。
![How to fork](https://dl.dropboxusercontent.com/u/2819285/howto-fork.png)
	
### 2. コピー（fork）したリポジトリ（fork ボタンを押した後に表示されるページ）から、次のURLをコピーします。
![How to clone 1/3](https://dl.dropboxusercontent.com/u/2819285/howto-clone.png)
	
### 3. ターミナル (CygwinやTerminal.appなど）を開き、コピーしたURLを使って、問題をダウンロード（git clone）します。
![How to clone 2/3](https://dl.dropboxusercontent.com/u/2819285/howto-clone-2.png)
	
### 4. 無事にダウンロード（git clone）が終わると、次のように表示されます。
![How to clone 3/3](https://dl.dropboxusercontent.com/u/2819285/howto-clone-3.png)

### 5. このディレクトリ内で、ペアプログラミングをして（あるいは一人で）問題を解きます。
![How to solve](https://dl.dropboxusercontent.com/u/2819285/howto-solve.png)
	
### 6. 問題を解き終わったら、解答コードをリポジトリに保存（git commit）します。
![How to commit](https://dl.dropboxusercontent.com/u/2819285/howto-commit.png)
	
### 7. 解答コードを GitHub 上へアップロード（git push）します。
![How to push](https://dl.dropboxusercontent.com/u/2819285/howto-push.png)
	
### 8. 2.で訪れたページを開き、先ほど書いた問題の解答を、オリジナルのリポジトリに送信（Pull Request）します。
なお、2. で開いたページのURLは、こんな感じのURLです：`https://github.com/アカウント名/リポジトリ名`

![How to Pull Request](https://dl.dropboxusercontent.com/u/2819285/howto-pr.png)
	
### 9. もし感想やコメント等があれば、是非書いてみてください！
![How to comment](https://dl.dropboxusercontent.com/u/2819285/howto-comment.png)

以上で準備およびインストラクションは終了です。では、問題を楽しんでください！


## 基本問題：数独自動生成プログラムの実装

数独のボードを出力する関数や、ボードが数独のルールを満たしているかをチェックする関数などを用意しました。
これらの関数を使って、数独ボードを生成してみてください。なお、それぞれの簡単な数独から難問の数独まで、４つのパターンを用意しました。

- レベル１：ろくにアルゴリズム組んでなくても解けるパターン
- レベル２：少しアルゴリズムが必要なパターン
- レベル３：大分アルゴリズムが必要なパターン
- レベル４：そもそも対角線9個しか埋まってないパターン

ただし、必ずしも用意された関数を使う必要はありません。結果として、数独のボードが生成出来れば何でも良いのです ;-)

＊ 残り１時間ぐらいになったら、状況を見てヒントを出します。

## 応用問題：ショートコーディング！

前回の勉強会で人気を博した、ショートコーディングのお時間です。__可能な限り短いコードで__、数独自動生成プログラムを実装してみてください。

実装したコードの可読性を捨て、新しい世界へ旅立ちましょう！

参考. [さようなら、可読性。こんにちは、新世界。](http://www.slideshare.net/uskey512/x-hago2-shortcoding-20110827)
