# Copalny 應用程序啟動指南

## 概述
Copalny 是一個基於 HTML5/JavaScript 的協作流程圖應用程序，使用 Google Gemini AI 生成項目步驟。

## 系統要求
- macOS (已測試)
- Python 3.9+
- Google Gemini API Key
- 現代瀏覽器 (Chrome, Firefox, Safari, Edge)

## 快速啟動 (推薦)

### 方法一：使用自動化腳本 (推薦)
```bash
cd /Users/jianjunneng/0923TEST/copalny
./start_server.sh
```

腳本會自動執行以下步驟：
1. 檢查項目文件完整性
2. 清理舊的服務器進程
3. 啟動HTTP服務器在端口8000
4. 驗證連接並顯示訪問地址

### 方法二：手動啟動
如果自動化腳本失敗，請按以下步驟手動操作：

```bash
# 1. 進入項目目錄
cd /Users/jianjunneng/0923TEST/copalny

# 2. 停止舊服務器 (如果有的話)
pkill -f "http.server"

# 3. 啟動服務器
python3 -m http.server 8000
```

## 訪問應用程序
啟動成功後，在瀏覽器中訪問：
```
http://localhost:8000/cowork.html
```

## 故障排除

### 問題：ERR_CONNECTION_REFUSED
**解決方案：**
1. 檢查服務器是否在運行：`ps aux | grep "http.server"`
2. 如果沒有運行，執行：`./start_server.sh`
3. 檢查端口8000是否被其他程序佔用：`lsof -i :8000`

### 問題：端口被佔用
**解決方案：**
```bash
# 查找佔用端口的進程
lsof -i :8000

# 強制停止
lsof -ti :8000 | xargs kill -9

# 重新啟動
./start_server.sh
```

### 問題：文件不存在錯誤
**解決方案：**
```bash
# 檢查項目文件
cd /Users/jianjunneng/0923TEST/copalny
ls -la *.html

# 如果文件丟失，從Git倉庫恢復
git checkout HEAD -- cowork.html
```

### 問題：Python版本問題
**解決方案：**
```bash
# 檢查Python版本
python3 --version

# 確保使用Python 3.9+
which python3
```

## 應用程序功能

### 核心功能
- 🎨 互動式流程圖繪製
- 🤖 AI 步驟生成 (Google Gemini)
- 📷 圖片上傳分析
- 📝 文字編輯區
- 💾 項目保存/導出

### AI 功能配置
1. 首次使用時會提示輸入 Gemini API Key
2. 支持文字和圖片輸入
3. 自動生成 3-8 個步驟
4. 支持步驟解釋和詳細說明

## 開發者信息

### 項目結構
```
/Users/jianjunneng/0923TEST/copalny/
├── cowork.html          # 主應用程序文件
├── start_server.sh     # 啟動腳本
├── README.md           # 項目說明
├── API_SETUP_GUIDE.md  # API 配置指南
├── test.html           # 測試頁面
├── check_config.html   # 配置檢查頁面
└── venv/               # Python 虛擬環境 (可選)
```

### 技術棧
- **前端**: HTML5, CSS3, JavaScript (ES6+)
- **樣式**: Tailwind CSS
- **AI**: Google Gemini 1.5 Flash API
- **圖形**: HTML5 Canvas API
- **文件處理**: FileReader API

### 自定義配置
如需修改端口或其他設置，請編輯 `start_server.sh` 文件中的變數：
```bash
PORT=8000  # 修改端口號
PROJECT_DIR="/Users/jianjunneng/0923TEST/copalny"  # 修改項目路徑
```

## 版本歷史

### v1.0 (2025年9月23日)
- ✅ 自動化啟動腳本
- ✅ AI 步驟生成優化 (移除JSON格式要求)
- ✅ 自然語言解析支持
- ✅ 服務器穩定性改進
- ✅ 完整的故障排除指南

## 支持
如果遇到問題：
1. 檢查此文檔的故障排除部分
2. 查看服務器日誌：`tail -f server.log`
3. 重新運行啟動腳本：`./start_server.sh`

---
*文檔版本: 1.0 | 更新日期: 2025年9月23日*