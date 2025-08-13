# GitHub Pages 部署指南

## 步骤1：创建GitHub仓库

1. 访问 [GitHub](https://github.com) 并登录您的账户
2. 点击右上角的 "+" 按钮，选择 "New repository"
3. 仓库名称建议：`c919-party-study-platform`
4. 描述：`党建学习平台 - C919主题研学网站`
5. 选择 "Public"（公开）
6. **重要**：勾选 "Add a README file"
7. 点击 "Create repository"

## 步骤2：推送代码到GitHub

在终端中运行以下命令（请将 `YOUR_USERNAME` 替换为您的GitHub用户名）：

```bash
# 添加远程仓库
git remote add origin https://github.com/YOUR_USERNAME/c919-party-study-platform.git

# 推送代码到GitHub
git push -u origin master
```

## 步骤3：启用GitHub Pages

1. 在GitHub仓库页面，点击 "Settings" 标签
2. 在左侧菜单中找到 "Pages"
3. 在 "Source" 部分，选择 "Deploy from a branch"
4. 在 "Branch" 下拉菜单中选择 "master"
5. 在 "Folder" 中选择 "/ (root)"
6. 点击 "Save"

## 步骤4：等待部署完成

GitHub Pages 通常需要几分钟时间来部署您的网站。部署完成后，您会看到一个绿色的勾号，并显示您的网站URL。

## 网站URL格式

您的网站URL将是：
```
https://YOUR_USERNAME.github.io/c919-party-study-platform/
```

## 注意事项

- 视频文件通过GitHub LFS上传，确保大文件能够正常处理
- 网站包含响应式设计，支持桌面和移动设备
- 如果视频无法播放，请检查浏览器是否支持HTML5视频播放

## 故障排除

如果遇到问题：

1. 确保GitHub LFS已正确安装和配置
2. 检查视频文件是否正确上传到LFS
3. 确保所有文件都已提交到GitHub
4. 检查GitHub Pages设置是否正确

## 更新网站

如果需要更新网站内容：

```bash
# 修改文件后
git add .
git commit -m "更新网站内容"
git push origin master
```

GitHub Pages会自动重新部署您的网站。 