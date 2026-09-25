#!/bin/bash
# POP MART 页面本地预览启动器（macOS 双击运行）
# 作用：自动启动本地 HTTP 服务，并打开浏览器预览 index.html
# 原理：file:// 打开时浏览器禁止视频进入 WebGL，位移场效果不生效；必须用 HTTP 打开

# 切换到本文件所在目录（即 popmart 目录）
cd "$(dirname "$0")"

PORT=8787
URL="http://localhost:$PORT/index.html"

# 若端口已被占用（例如上一次的服务没关），说明已有服务在跑，直接用即可
(python3 -m http.server "$PORT" >/tmp/popmart_http.log 2>&1 &)

sleep 1
open "$URL"

echo ""
echo "已打开：$URL"
echo "服务器已在后台运行。"
echo "如需关闭服务，在终端执行：  lsof -ti tcp:$PORT | xargs kill"
