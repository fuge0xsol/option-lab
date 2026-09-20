#!/usr/bin/env bash
# 期权教学站 发布脚本：push 到 GitHub main 触发 Actions 部署 GitHub Pages，
# 本地用 wrangler 直传 Cloudflare Pages。
# 用法：改完 index.html 后在本目录执行 ./deploy.sh
set -e
export HTTPS_PROXY=http://127.0.0.1:7897
export NO_UPDATE_CHECK=1 WRANGLER_SEND_METRICS=false

# 1. 提交并推送（GitHub Pages 由 Actions 自动部署）
if [ -n "$(git status --porcelain)" ]; then
    git add -A
    git commit -m "update: $(date +%F)" --quiet
fi
git push

# 2. Cloudflare Pages：wrangler 直传
wrangler pages deploy . --project-name=optionlab --branch=main --commit-dirty=true

echo "完成: https://fuge0xsol.github.io/optionlab/ (Actions 构建约 1 分钟)  |  https://optionlab.pages.dev"
