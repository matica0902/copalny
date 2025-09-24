#!/bin/bash

# Copalny 應用程序啟動腳本
# 版本: 1.0
# 日期: 2025年9月23日
# 作者: GitHub Copilot

echo "=== Copalny 應用程序啟動腳本 ==="
echo "版本: 1.0 | 日期: 2025年9月23日"
echo ""

# 設置變數
PROJECT_DIR="/Users/jianjunneng/0923TEST/copalny"
PORT=8000
LOG_FILE="$PROJECT_DIR/server.log"

echo "項目目錄: $PROJECT_DIR"
echo "服務器端口: $PORT"
echo "日誌文件: $LOG_FILE"
echo ""

# 步驟 1: 檢查項目目錄是否存在
echo "步驟 1: 檢查項目目錄..."
if [ ! -d "$PROJECT_DIR" ]; then
    echo "❌ 錯誤: 項目目錄不存在: $PROJECT_DIR"
    exit 1
fi

if [ ! -f "$PROJECT_DIR/cowork.html" ]; then
    echo "❌ 錯誤: 主應用文件不存在: $PROJECT_DIR/cowork.html"
    exit 1
fi
echo "✅ 項目目錄和文件檢查通過"
echo ""

# 步驟 2: 停止所有現有的HTTP服務器
echo "步驟 2: 清理舊的服務器進程..."
pkill -f "http.server" 2>/dev/null
sleep 2

# 檢查端口是否被佔用
if lsof -i :$PORT >/dev/null 2>&1; then
    echo "⚠️  端口 $PORT 仍被佔用，強制清理..."
    lsof -ti :$PORT | xargs kill -9 2>/dev/null
    sleep 2
fi
echo "✅ 舊進程清理完成"
echo ""

# 步驟 3: 進入項目目錄
echo "步驟 3: 進入項目目錄..."
cd "$PROJECT_DIR"
if [ $? -ne 0 ]; then
    echo "❌ 錯誤: 無法進入目錄 $PROJECT_DIR"
    exit 1
fi
echo "✅ 已進入項目目錄: $(pwd)"
echo ""

# 步驟 4: 啟動HTTP服務器
echo "步驟 4: 啟動HTTP服務器..."
echo "命令: nohup python3 -m http.server $PORT > $LOG_FILE 2>&1 &"
nohup python3 -m http.server $PORT > "$LOG_FILE" 2>&1 &
SERVER_PID=$!
echo "服務器PID: $SERVER_PID"
sleep 3
echo "✅ 服務器啟動命令已執行"
echo ""

# 步驟 5: 驗證服務器是否運行
echo "步驟 5: 驗證服務器狀態..."
if ps -p $SERVER_PID >/dev/null 2>&1; then
    echo "✅ 服務器進程正在運行 (PID: $SERVER_PID)"
else
    echo "❌ 錯誤: 服務器進程未運行"
    echo "檢查日誌文件: $LOG_FILE"
    exit 1
fi
echo ""

# 步驟 6: 測試HTTP連接
echo "步驟 6: 測試HTTP連接..."
TEST_URL="http://localhost:$PORT/cowork.html"
echo "測試URL: $TEST_URL"

HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$TEST_URL" 2>/dev/null)
if [ "$HTTP_CODE" = "200" ]; then
    echo "✅ HTTP連接測試成功 (狀態碼: $HTTP_CODE)"
else
    echo "❌ HTTP連接測試失敗 (狀態碼: $HTTP_CODE)"
    echo "檢查日誌文件: $LOG_FILE"
    exit 1
fi
echo ""

# 成功信息
echo "=== 啟動成功！ ==="
echo "🌐 應用程序訪問地址: http://localhost:$PORT/cowork.html"
echo "📁 項目目錄: $PROJECT_DIR"
echo "📄 日誌文件: $LOG_FILE"
echo "🔢 服務器PID: $SERVER_PID"
echo ""
echo "💡 使用說明:"
echo "   - 在瀏覽器中訪問上述地址"
echo "   - 要停止服務器: kill $SERVER_PID 或 pkill -f 'http.server'"
echo "   - 查看日誌: tail -f $LOG_FILE"
echo ""
echo "🎉 Copalny 應用程序已準備就緒！"