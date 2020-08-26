#!/bin/bash

WORKDIR=sls-workdir
SERVICE=my-service

echo --- 基本情報 ---
echo サービス名: $SERVICE
echo サービスのソースのディレクトリ: $WORKDIR
echo

echo --- step.1 serverlessframewrokをインストール ---
echo インストール実行コマンド:
echo npm install -g serverless
echo
echo バージョンチェックコマンド:
echo serverless --version
echo

echo --- step.2 serverlessで雛形を作成 ---
echo サービス作成コマンド:
echo serverless create --template aws-nodejs --name $SERVICE --path $SERVICE
echo

echo --- step.3 ハンドラ/serverless.yml修正 ---
echo

echo --- step.4 デプロイメント/サーバー反映 ---
echo sls deploy
echo

echo --- step.5 関数の実行 ---
echo sls invoke --function \<関数名\>
echo

echo --- step.x 関数の削除 ---
echo sls remove
echo
