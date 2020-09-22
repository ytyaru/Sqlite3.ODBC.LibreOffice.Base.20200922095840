# LibreOffice calc 学習したい

　特にマクロ。

<!-- more -->

# 発端

　座席表を作りたい。[シェル版][]はもう作った。今度は実際の生徒を入力できるツールが欲しい。

[シェル版]:http://ytyaru.hatenablog.com/entry/2022/07/15/000000

# 要件概要

1. クラス名簿を入力する
2. 名前の読み順に自動でソートして出席番号を割り振ってくれる
3. さらに「席替え」ボタンで座席表を作ってくれる

　他にも以下のような機能があると嬉しい。

* 「漢字」から「読み」を自動で推測し入力して欲しい
* 「性別」があれば男女で色分けしたい
* 席替えの配置にはいくつかの変数を適用させたい
	* 出席番号順（A. 左上から右下へ  B. 右上から下左へ）
	* ランダム
	* 男女交互
	* 男女分別

## なぜLibreOffice calcか

* [シェル版][]では動的に名前の変更や席替えができない
	* JavaScriptで実装することになる
		* WebAppを作る？
* LibreOffice calcも勉強してみたい
	* 名前データを手作業でTSVに整形するときにもっと自動化したかったが、知識がなくてできなかった
* なら先にLibreOffice calcを学習して座席表ツールを作ろう
	* 応用範囲も広そう

# 1. LibreOfficeソフトウェア一覧

アプリ|概要
------|----
Base|データベース
Calc|表計算
Draw|フローチャート等の図形描画。
Impress|プレゼン用スライド。
Math|数学の公式や方程式。
Writer|文書。

# 1. インストール

```sh
sudo apt -y install libreoffice libreoffice-l10n-ja libreoffice-help-ja
```

![]()

# 2. マクロ

　マクロとは、calcを操作する簡易言語のこと。これを使って作業を自動化できる。

## 言語

* LibreOffice BASIC
* Python
* JavaScript
* BeanShell

　使用できるマクロ言語は4種。

　確認方法は以下。

1. LibreOffice calc を起動する
2. メニュー→`ツール`→`マクロ`→`マクロの管理`をマウスオーバーする

# 3. SDK

　今回は対象外。calcを使わず、プログラミング言語からcalcを操作するためのライブラリ。Java, C++。

* [LibreOffice SDK](https://api.libreoffice.org/docs/install.html)

# 4. セキュリティ

　マクロを実行できるようセキュリティを下げる。

1. LibreOffice calc を起動する
2. メニュー→`ツール`→`オプション`をクリックする
3. ダイアログの左にあるツリーから`LibreOffice`→`セキュリティ`をクリックする
4. ダイアログの右にある`マクロセキュリティ`ボタンをクリックする
5. `セキュリティレベル`タブ内のラジオボタン`中`をクリックする
6. `OK`ボタンをクリックする

　これでマクロ実行時、信頼されていないソースからのマクロでも、確認ダイアログが表示される。そのとき`マクロの有効化`ボタンをクリックすればマクロが実行できるようになる。

# 所感

　Calcを使うことしか考えていなかったが、最初にBaseを使ってみたい。SQLite3と連携したい。

# 情報源

* https://vdlz.xyz/PC/LibreOffice/Macro/LibreOfficeMacro.html
* https://qiita.com/shota243/items/286ae4083556ae98b611

# LibreOfficeについて

* 表計算ソフトには以下のようなものがある
	* Microsoft社製のExcel（有償）
	* LibreOfficeのCalc（無償）
* LibreOfficeはApache OpenOfficeから派生したアプリである
* Excelのマクロ言語VBAは情報が豊富にある
* Calcのマクロ言語は情報が少ない
* LibreOfficeはUNO(Universal Network Objects)というソフトウェアコンポーネントを使うことで操作できる
	* UNOはpythonなど異なる言語から使うことができる

# 対象環境

* <time datetime="2020-09-20T07:53:58+0900" title="実施日">2020-09-20</time>
* [Raspbierry pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 4 Model B
* [Raspbian buster](https://ja.wikipedia.org/wiki/Raspbian) 10.0 2019-09-26 [※](http://ytyaru.hatenablog.com/entry/2019/12/25/222222)
* [bash](https://ja.wikipedia.org/wiki/Bash) 5.0.3(1)-release

```sh
$ uname -a
Linux raspberrypi 4.19.97-v7l+ #1294 SMP Thu Jan 30 13:21:14 GMT 2020 armv7l GNU/Linux
```
