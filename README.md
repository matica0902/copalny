# 🌳 Coplany - AI 互動式程序流程畫布

一個強大的 AI 驅動的程序流程圖生成工具，支援樹狀圖和列表圖兩種視覺化模式，讓您輕鬆規劃和管理專案流程。

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Platform](https://img.shields.io/badge/platform-Web-brightgreen.svg)

## ✨ 功能特色

### 🤖 AI 智能生成
- **Gemini API 整合**：使用 Google Gemini AI 自動生成專案流程步驟
- **智能分析**：AI 會根據您的目標自動分解為可執行的步驟
- **詳細解釋**：點擊任何步驟可獲得 AI 的詳細解釋

### 🎨 雙重視覺模式
- **📋 列表圖模式**：垂直排列，適合線性流程展示
- **🌳 樹狀圖模式**：二叉樹結構，適合分支決策展示
- **一鍵切換**：隨時在兩種模式間自由切換

### 🛠️ 互動編輯
- **拖拽移動**：自由拖拽步驟方塊調整位置
- **即時編輯**：雙擊步驟即可編輯內容
- **多行支援**：支援多行文字和換行顯示
- **手動新增**：可手動添加自訂步驟

### 📱 響應式設計
- **現代化 UI**：使用 Tailwind CSS 的美觀介面
- **響應式佈局**：自動適應不同螢幕尺寸
- **滾動支援**：內容過多時支援滾動查看

## 🚀 快速開始

### 前置需求

1. **現代瀏覽器**
   - Chrome 80+
   - Firefox 75+
   - Safari 13+
   - Edge 80+

2. **Google Gemini API Key**
   - 前往 [Google AI Studio](https://makersuite.google.com/app/apikey)
   - 註冊並獲取免費 API Key

### 安裝方式

#### 方式一：直接下載使用

1. **下載專案**
   ```bash
   git clone https://github.com/enjoyce20061010/coplany.git
   cd coplany
   ```

2. **開啟應用程式**
   - 雙擊 `cowork.html` 檔案
   - 或使用瀏覽器開啟檔案

3. **輸入 API Key**
   - 頁面開啟時會提示輸入 Gemini API Key
   - 貼上您的 API Key 即可開始使用

#### 方式二：本地伺服器（推薦）

1. **使用 Python 簡單伺服器**
   ```bash
   cd coplany
   python -m http.server 8000
   ```
   然後在瀏覽器開啟 `http://localhost:8000/cowork.html`

2. **使用 Node.js 伺服器**
   ```bash
   cd coplany
   npx serve .
   ```

3. **使用 Live Server（VS Code 擴展）**
   - 在 VS Code 中安裝 Live Server 擴展
   - 右鍵點擊 `cowork.html` 選擇 "Open with Live Server"

## 📖 使用指南

### 基本操作

1. **生成流程步驟**
   - 在輸入框中輸入您的專案目標
   - 例如：「開發一個電商網站」
   - 點擊「✨ 生成流程步驟」按鈕
   - 等待 AI 生成詳細步驟

2. **編輯步驟內容**
   - **雙擊**任何步驟方塊進行編輯
   - 支援多行文字輸入（Shift+Enter 換行）
   - 按 **Enter** 完成編輯，按 **Escape** 取消

3. **移動和排列**
   - **點擊**選取步驟方塊
   - **拖拽**移動到理想位置
   - 選取後可使用「✨ 解釋此步驟」功能

4. **切換視覺模式**
   - 點擊「🌳 切換樹狀圖」按鈕
   - 在列表圖和樹狀圖間自由切換
   - 樹狀圖會顯示節點編號和連接線

### 進階功能

1. **手動新增步驟**
   - 點擊「➕ 手動新增步驟」按鈕
   - 輸入自訂步驟內容
   - 新步驟會自動整合到現有流程中

2. **AI 解釋功能**
   - 選取任何步驟方塊
   - 點擊「✨ 解釋此步驟」按鈕
   - 獲得 AI 的詳細技術解釋

3. **多行文字支援**
   - 編輯時使用 Shift+Enter 換行
   - 系統會自動調整方塊高度
   - 支援複雜的步驟描述

## 🛠️ 開發者指南

### 專案結構

```
coplany/
├── cowork.html              # 主應用程式
├── test_api.html           # API 連線測試工具
├── check_config.html       # 配置檢查工具
├── API_SETUP_GUIDE.md      # API 設定詳細指南
└── README.md               # 專案說明文件
```

### 技術架構

- **前端框架**：純 HTML5 + JavaScript ES6+
- **樣式框架**：Tailwind CSS CDN
- **繪圖引擎**：HTML5 Canvas
- **AI 服務**：Google Gemini API
- **響應式設計**：CSS Grid + Flexbox

### 自訂開發

1. **修改樣式**
   - 編輯 `cowork.html` 中的 `<style>` 區塊
   - 或替換 Tailwind CSS 為其他 CSS 框架

2. **擴展功能**
   - 在 `cowork.html` 的 JavaScript 區塊添加新功能
   - 參考現有函數的命名規範

3. **整合其他 AI**
   - 修改 `callGeminiAPI` 函數
   - 替換為其他 AI 服務的 API 端點

## 🔧 故障排除

### 常見問題

#### Q: API 連線失敗
**A:** 檢查以下項目：
- API Key 是否正確（應以 `AIza` 開頭）
- 網路連線是否正常
- API Key 是否有使用限制

#### Q: 無法生成步驟
**A:** 可能的原因：
- API Key 未設定或無效
- 輸入的目標過於模糊
- 網路連線問題

#### Q: 樹狀圖顯示異常
**A:** 解決方法：
- 重新整理頁面
- 切換回列表圖再切換回樹狀圖
- 檢查瀏覽器是否支援 Canvas

#### Q: 編輯功能無法使用
**A:** 檢查項目：
- 確保雙擊的是步驟方塊
- 檢查瀏覽器是否支援現代 JavaScript
- 嘗試重新整理頁面

### 除錯工具

1. **API 測試工具**
   - 開啟 `test_api.html`
   - 測試 API Key 是否有效

2. **配置檢查工具**
   - 開啟 `check_config.html`
   - 檢查主程式配置是否正確

3. **瀏覽器開發者工具**
   - 按 F12 開啟開發者工具
   - 查看 Console 中的錯誤訊息

## 📝 更新日誌

### v1.0.0 (2024-12-19)
- ✨ 初始版本發布
- 🤖 整合 Gemini API
- 🌳 實現樹狀圖和列表圖雙模式
- 🛠️ 支援拖拽編輯和即時修改
- 📱 響應式設計和現代化 UI

## 🤝 貢獻指南

歡迎貢獻代碼！請遵循以下步驟：

1. **Fork 專案**
2. **創建功能分支** (`git checkout -b feature/AmazingFeature`)
3. **提交變更** (`git commit -m 'Add some AmazingFeature'`)
4. **推送分支** (`git push origin feature/AmazingFeature`)
5. **開啟 Pull Request**

### 開發規範

- 使用有意義的變數和函數名稱
- 添加適當的註解
- 測試新功能確保相容性
- 更新相關文件

## 📄 授權條款

本專案採用 MIT 授權條款 - 查看 [LICENSE](LICENSE) 檔案了解詳情。

## 🙏 致謝

- [Google Gemini AI](https://ai.google.dev/) - 提供強大的 AI 能力
- [Tailwind CSS](https://tailwindcss.com/) - 現代化 CSS 框架
- [GitHub](https://github.com/) - 代碼託管平台

## 📞 支援與聯絡

- **問題回報**：[GitHub Issues](https://github.com/enjoyce20061010/coplany/issues)
- **功能建議**：[GitHub Discussions](https://github.com/enjoyce20061010/coplany/discussions)
- **開發者**：[@enjoyce20061010](https://github.com/enjoyce20061010)

---

⭐ 如果這個專案對您有幫助，請給我們一個 Star！

🔗 **快速連結**
- [線上演示](https://github.com/enjoyce20061010/coplany)
- [API 設定指南](API_SETUP_GUIDE.md)
- [問題回報](https://github.com/enjoyce20061010/coplany/issues)

**Made with ❤️ by [enjoyce20061010](https://github.com/enjoyce20061010)**
