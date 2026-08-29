# 校招记录 · Campus Recruit Tracker

一个跨设备云端同步的校招进度记录工具。手机和电脑登录同一账号，数据自动同步；也支持多人各自注册使用，互不干扰。

## 功能

- 记录岗位的**公司名**、**岗位名**、**日期**、**当前进展**
- 按进展自动分组显示（已投递 → 简历筛选 → 笔试 → 面试 → Offer → 已签约 …）
- 落选岗位一键**划掉**
- 点击岗位展开「**需要学习的知识点**」，可添加 / 删除 / 勾选已掌握
- **导出 / 导入 JSON** 文件备份
- **深浅色模式**切换
- 邮箱账号登录，**多设备实时同步**

## 技术栈

- 前端：纯 HTML / CSS / JS（单文件 `index.html`）
- 后端：Supabase（Auth + Postgres + Row Level Security）
- 部署：GitHub Pages

## 使用方法

打开网址（GitHub Pages 地址），首次点「去注册」用邮箱 + 密码（≥6 位）注册并登录。在手机 / 电脑上登录**同一个邮箱**即可看到同一份数据。

## 本地运行

直接双击 `index.html` 打开即可（连接信息已内置）。也可在目录下运行：

```bash
python -m http.server
```

然后访问 http://localhost:8000 。

## 部署

1. 按 `SETUP.md` 完成 Supabase 配置（建项目、关邮箱确认、运行 `supabase-setup.sql`）
2. 把 `index.html` 顶部两个常量改成你的 Project URL 和 publishable key
3. 推送到 GitHub，开启 Pages

> 详见 `SETUP.md`。
