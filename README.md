非公式Tech-circle #4 Consulハンズオン環境構築用Vagrantfile
===
このVagrantfileは[Tech-Circle #4: Consulハンズオン勉強会](http://techcircle.connpass.com/event/12860/)で必要な作業のShellプロビジョニングを含んでいます。

手順は以下の記事に準じています。

[Tech-circle #4 Consulハンズオン 準備編](http://qiita.com/_BSmile_/items/c43484ee31885b89c081)

イベント公式のものではないため、問い合わせや修正などがあればこのリポジトリーでIssue起票またはPull Requestしてください。

# 使い方

```
vagrant up
```

# 動作確認

```
vagrant ssh

# Dockerのバージョン確認(ログイン後のVMで実行)
sudo docker version

# Dockerが起動していることを確認(ログイン後のVMで実行)
sudo service docker status
```
