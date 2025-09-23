# 🚀 Gemini API 連線設定指南

## 📋 設定步驟

### 1. 取得 Google Gemini API Key

1. **前往 Google AI Studio**
   - 開啟瀏覽器，前往：https://makersuite.google.com/app/apikey
   - 使用您的 Google 帳戶登入

2. **建立 API Key**
   - 點擊「Create API key in new project」
   - 選擇「Create API key in new project」
   - 系統會自動生成一個以 `AIza` 開頭的 API Key

3. **複製並保存 API Key**
   - 複製生成的 API Key
   - **重要**：請妥善保存，不要分享給他人

### 2. 更新 HTML 檔案

1. **開啟 `cowork.html` 檔案**
2. **找到第 110 行**：
   ```javascript
   const apiKey = "YOUR_GEMINI_API_KEY_HERE";
   ```
3. **替換 API Key**：
   ```javascript
   const apiKey = "AIzaSyC..."; // 您的實際 API Key
   ```

### 3. 執行應用程式

1. **直接開啟 HTML 檔案**
   - 雙擊 `cowork.html` 檔案
   - 或右鍵選擇「開啟方式」→「瀏覽器」

2. **測試功能**
   - 在輸入框中輸入您的目標
   - 點擊「✨ 生成流程步驟」按鈕
   - 等待 AI 生成步驟

## ⚠️ 安全注意事項

### 🔒 API Key 安全
- **不要**將 API Key 提交到公開的 Git 倉庫
- **不要**在前端程式碼中硬編碼 API Key（生產環境）
- **建議**使用環境變數或後端代理

### 🛡️ 建議的安全配置
1. **設定 API Key 限制**
   - 前往 Google Cloud Console
   - 設定 IP 地址限制
   - 設定 API 使用限制

2. **使用後端代理**（進階）
   - 建立 Node.js 後端伺服器
   - 在前端隱藏 API Key
   - 透過後端呼叫 Gemini API

## 🐛 常見問題

### Q: API 呼叫失敗
**A:** 檢查以下項目：
- API Key 是否正確
- 網路連線是否正常
- API Key 是否有使用限制

### Q: 模型版本錯誤
**A:** 當前使用的模型是 `gemini-1.5-flash`，這是穩定的版本

### Q: CORS 錯誤
**A:** 如果遇到跨域問題，建議使用本地伺服器：
```bash
# 使用 Python 簡單伺服器
python -m http.server 8000

# 或使用 Node.js
npx serve .
```

## 📊 API 使用限制

- **免費額度**：每天有免費的 API 呼叫次數
- **速率限制**：每分鐘有呼叫次數限制
- **模型限制**：某些模型可能有使用限制

## 🔧 進階配置

### 使用環境變數（推薦）
```javascript
// 在 HTML 中
const apiKey = process.env.GEMINI_API_KEY || "YOUR_FALLBACK_KEY";
```

### 後端代理範例
```javascript
// server.js
const express = require('express');
const app = express();

app.post('/api/gemini', async (req, res) => {
  // 在此處理 Gemini API 呼叫
  // 隱藏 API Key
});
```

## 📞 支援

如果遇到問題，請檢查：
1. Google AI Studio 官方文檔
2. Gemini API 狀態頁面
3. 瀏覽器開發者工具的錯誤訊息

---
**最後更新**：2024年12月
**版本**：1.0
