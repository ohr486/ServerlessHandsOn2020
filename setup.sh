#!/bin/bash

WORKDIR=sls-workdir

echo "=== SETUP serverless handson 2020 Envs ==="

echo "-----> setup envs"
echo "WORKDIR: $WORKDIR"
echo

echo "-----> check dev tools"
for t in git curl npm node; do
  echo "$t: `which $t`"
done
echo

echo "-----> checkout repo"
rm -rf $WORKDIR
git clone https://github.com/ohr486/ServerlessHandsOn2020.git $WORKDIR
echo

echo "-----> check versions"
echo "npm: `npm --version`"
echo "node: `node --version`"
