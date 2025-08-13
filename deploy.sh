#!/bin/bash

# 党建学习平台 - GitHub Pages 部署脚本

echo "🚀 开始部署党建学习平台到GitHub Pages..."

# 检查Git配置
echo "📋 检查Git配置..."
if [ -z "$(git config --global user.name)" ] || [ -z "$(git config --global user.email)" ]; then
    echo "❌ 请先配置Git用户信息："
    echo "git config --global user.name '您的GitHub用户名'"
    echo "git config --global user.email '您的GitHub邮箱'"
    exit 1
fi

# 检查是否有未提交的更改
if [ -n "$(git status --porcelain)" ]; then
    echo "📝 发现未提交的更改，正在提交..."
    git add .
    git commit -m "更新网站内容 $(date)"
fi

# 提示用户输入GitHub用户名
echo "📝 请输入您的GitHub用户名："
read github_username

if [ -z "$github_username" ]; then
    echo "❌ GitHub用户名不能为空"
    exit 1
fi

# 设置远程仓库
echo "🔗 设置远程仓库..."
git remote remove origin 2>/dev/null
git remote add origin "https://github.com/$github_username/c919-party-study-platform.git"

# 推送代码
echo "📤 推送代码到GitHub..."
git push -u origin master

if [ $? -eq 0 ]; then
    echo "✅ 代码推送成功！"
    echo ""
    echo "🌐 接下来请按照以下步骤启用GitHub Pages："
    echo "1. 访问 https://github.com/$github_username/c919-party-study-platform"
    echo "2. 点击 'Settings' 标签"
    echo "3. 在左侧菜单中找到 'Pages'"
    echo "4. 在 'Source' 部分选择 'Deploy from a branch'"
    echo "5. 在 'Branch' 中选择 'master'"
    echo "6. 在 'Folder' 中选择 '/ (root)'"
    echo "7. 点击 'Save'"
    echo ""
    echo "🎉 部署完成后，您的网站将可通过以下地址访问："
    echo "https://$github_username.github.io/c919-party-study-platform/"
    echo ""
    echo "⏳ 请等待几分钟让GitHub Pages完成部署..."
else
    echo "❌ 代码推送失败，请检查："
    echo "1. 是否已在GitHub创建了仓库 c919-party-study-platform"
    echo "2. 是否有正确的GitHub访问权限"
    echo "3. 网络连接是否正常"
fi 