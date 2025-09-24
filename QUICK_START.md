# 🚀 Copalny 快速入門指南

## 歡迎使用 Copalny！

**Copalny** 是一個 AI 驅動的互動式程序流程圖生成工具。

---

## 📋 快速導航

### 🔥 立即開始 (推薦新手)
如果您是第一次使用或遇到問題：

1. **一鍵啟動應用程序**：
   ```bash
   cd /Users/jianjunneng/0923TEST/copalny
   ./start_server.sh
   ```

2. **訪問應用程序**：
   打開瀏覽器訪問：`http://localhost:8000/cowork.html`

### 📚 詳細文檔

| 文檔 | 用途 | 適用對象 |
|------|------|----------|
| **[STARTUP_GUIDE.md](STARTUP_GUIDE.md)** | 🔧 完整的啟動和故障排除指南 | 遇到啟動問題時使用 |
| **[AI_PROMPT_GUIDE.md](AI_PROMPT_GUIDE.md)** | 🤖 AI 提示詞與回應處理說明 | 了解 AI 功能實現 |
| **[GITHUB_RELEASE_GUIDE.md](GITHUB_RELEASE_GUIDE.md)** | 🚀 GitHub 發佈指南 | 想要發佈到GitHub時使用 |
| **[README.md](README.md)** | 📖 項目功能和特性說明 | 了解應用功能 |
| **[API_SETUP_GUIDE.md](API_SETUP_GUIDE.md)** | 🔑 Google Gemini API 配置 | 需要設置AI功能 |

---

## ⚡ 常見問題快速解決

### Q: 無法連接到 localhost:8000？
**A:** 運行 `./start_server.sh` 自動修復

### Q: 應用程序打不開？
**A:** 檢查瀏覽器地址是否正確：`http://localhost:8000/cowork.html`

### Q: 需要AI功能怎麼辦？
**A:** 參考 [API_SETUP_GUIDE.md](API_SETUP_GUIDE.md) 配置 Gemini API

### Q: 遇到其他問題？
**A:** 查看 [STARTUP_GUIDE.md](STARTUP_GUIDE.md) 的故障排除部分

---

## 🎯 優先閱讀順序

### 對於新用戶：
1. **本文件** (QUICK_START.md) - 快速入門
2. **STARTUP_GUIDE.md** - 詳細啟動說明
3. **README.md** - 功能介紹

### 對於開發者：
1. **README.md** - 項目概述
2. **API_SETUP_GUIDE.md** - 技術配置
3. **STARTUP_GUIDE.md** - 部署說明

### 遇到問題時：
1. **STARTUP_GUIDE.md** - 故障排除
2. **本文件** - 快速導航

---

## 📞 技術支持

如果問題無法解決，請按以下順序檢查：

1. **運行診斷腳本**：
   ```bash
   ./start_server.sh
   ```

2. **檢查服務器狀態**：
   ```bash
   ps aux | grep "http.server"
   curl http://localhost:8000/cowork.html
   ```

3. **查看日誌**：
   ```bash
   tail -f server.log
   ```

---

## 🎉 開始使用！

現在您已經準備好了。運行 `./start_server.sh` 然後享受 Copalny 帶來的便利吧！

**提示**: 將此文件加入書籤，隨時回來查看快速指引。

---
*版本: 1.0 | 更新: 2025年9月23日*