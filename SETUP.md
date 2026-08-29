# 云端部署指南（Supabase + GitHub Pages）

本教程约 3 分钟。完成后，手机和电脑登录同一个邮箱账号，数据自动同步；别人也可以各自注册使用。

---

## 第一步：创建 Supabase 项目

1. 打开 https://supabase.com → 点 **Start your project**（用 GitHub 账号或邮箱登录）
2. 新建项目：
   - Organization 默认即可
   - 项目名随意，如 `campus-recruit`
   - 数据库密码随便设一个（记下来即可，后续用不到）
   - Region 选离你近的，如 **Singapore** 或 **Tokyo**
3. 等项目初始化完成（约 1 分钟）

## 第二步：关闭邮箱确认（让注册后立即登录，不依赖收邮件）

1. 左侧 **Authentication → Providers → Email**
2. 把 **Confirm email** 关掉（Off）
3. 保存

## 第三步：建表 + 权限

1. 左侧 **SQL Editor → New query**
2. 把 `supabase-setup.sql` 里的内容**全部**粘贴进去
3. 点 **Run**（或 Ctrl+Enter），出现 "Success" 即成功

## 第四步：拿到连接信息（发给 Claude）

1. 左侧 **Project Settings → API**
2. 复制 **Project URL**（形如 `https://xxxx.supabase.co`）
3. 复制 **anon public** key（形如 `eyJhbGci...`，这是公开密钥，放心发）
4. 把这两个值发给 Claude

## 第五步：Claude 完成后

- Claude 会把这两个值填进代码、推送到 GitHub、并开启 GitHub Pages
- 之后通过 `https://<你的用户名>.github.io/campus-recruit-tracker/` 访问

---

## 使用说明

- **首次**：打开网址 → 点「去注册」→ 输入邮箱 + 密码（≥6 位）→ 自动登录
- **手机 / 电脑同步**：在另一个设备打开网址 → 用**同一个邮箱密码**登录即可看到同一份数据
- **多人使用**：每个人用自己的邮箱注册，各看各的数据，互不干扰

> 关于 Site URL（可选）：如果以后要用「找回密码」功能，在 Supabase → Authentication → URL Configuration 里把 Site URL 改成你的 Pages 网址即可。日常登录不受影响。
