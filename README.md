# 校招记录 · Campus Recruit Tracker

一个跨设备云端同步的校招进度记录工具。手机和电脑登录同一账号，数据自动同步；也支持多人各自注册使用，互不干扰。

## 🚀 打开使用

**手机 / 电脑浏览器直接打开（无需下载 App）：**

👉 **https://111fengyue.github.io/campus-recruit-tracker/**

**安装到手机主屏幕（像 App 一样用）：**

| 平台 | 步骤 |
| --- | --- |
| iPhone / iPad（Safari） | 打开网址 → 底部「分享」→「添加到主屏幕」 |
| 安卓（Chrome 等） | 打开网址 → 右上角「⋮」→「安装应用」/「添加到主屏幕」 |

> 卸载后想重新安装：重新打开网址，点页面里的「安装」按钮；iPhone 则点「分享」→「添加到主屏幕」。

- 首次点「去注册」，用邮箱 + 密码（≥6 位）注册并登录
- 换设备登录**同一个邮箱**，数据自动同步
- 忘记密码：登录页点「忘记密码？」→ 输入邮箱 → 查收邮件点链接重置

## 功能

- 记录岗位的**公司名**、**岗位名**、**日期**、**当前进展**
- 按进展自动分组显示（已投递 → 简历筛选 → 笔试 → 面试 → Offer → 已签约 …）
- 落选岗位一键**划掉**
- 点击岗位展开「**需要学习的知识点**」，可添加 / 删除 / 勾选已掌握
- **深浅色模式**、**同步状态提示**、**手动刷新**
- 邮箱账号登录、**多设备实时同步**、**找回密码**
- **PWA**：可安装到手机主屏幕当 App 用

## 技术栈

- 前端：纯 HTML / CSS / JS（单文件 `index.html`）
- 后端：Supabase（Auth + Postgres + Row Level Security）
- 部署：GitHub Pages
- PWA：`manifest.json` + `service-worker.js`

## 本地运行

直接双击 `index.html` 打开（连接信息已内置）。或：

```bash
python -m http.server
```

然后访问 http://localhost:8000 。

## 部署 / 配置

1. 按 `SETUP.md` 完成 Supabase 配置（建项目、关邮箱确认、运行 `supabase-setup.sql`、设置 Site URL）
2. 把 `index.html` 顶部两个常量改成你的 Project URL 和 publishable key
3. 推送到 GitHub，开启 Pages

> 详见 `SETUP.md`。
