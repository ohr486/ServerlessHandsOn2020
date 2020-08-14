#!/bin/bash

echo "=== SETUP serverless handson 2020 Envs ==="

echo "-----> check dev tools"
for t in git curl npm node; do
  echo "$t: `which $t`"
done
echo

echo "-----> checkout repo"
rm -rf workdir
git clone git@github.com:ohr486/ServerlessHandsOn2020.git workdir
echo

echo "-----> check versions"
echo "npm: `npm --version`"
echo "node: `node --version`"
echo
