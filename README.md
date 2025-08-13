# 党建学习平台 - C919主题研学

这是一个基于Gradio的党建学习平台，专注于C919大型客机主题的研学活动。

## 功能特点

- 🎯 **C919新闻动态** - 最新的C919相关新闻和动态
- 📚 **学习资料** - 大飞机诞生之路、飞行安全介绍等学习资料
- 🎮 **知识问答** - 互动式C919知识测试
- 📱 **响应式设计** - 支持桌面和移动设备
- 🎥 **视频播放** - 集成C919纪录片视频

## 文件结构

```
├── app.py              # 主应用文件
├── complete_app.py     # 完整版应用（推荐使用）
├── index-9.html        # 原始HTML文件
├── local-video-1.mp4   # C919纪录片视频
├── requirements.txt    # Python依赖
└── README.md          # 项目说明
```

## 本地运行

1. 安装依赖：
```bash
pip install -r requirements.txt
```

2. 运行应用：
```bash
python complete_app.py
```

3. 在浏览器中打开：`http://localhost:7860`

## Hugging Face Spaces 部署

### 方法1：使用Hugging Face Spaces

1. 访问 [Hugging Face Spaces](https://huggingface.co/spaces)
2. 创建新的Space，选择Gradio SDK
3. 上传以下文件：
   - `complete_app.py` (重命名为 `app.py`)
   - `requirements.txt`
   - `index-9.html`
   - `local-video-1.mp4`

### 方法2：使用Git

1. 在Hugging Face创建新的Space
2. 克隆Space仓库：
```bash
git clone https://huggingface.co/spaces/YOUR_USERNAME/YOUR_SPACE_NAME
```

3. 复制文件到仓库：
```bash
cp complete_app.py YOUR_SPACE_NAME/app.py
cp requirements.txt YOUR_SPACE_NAME/
cp index-9.html YOUR_SPACE_NAME/
cp local-video-1.mp4 YOUR_SPACE_NAME/
```

4. 提交并推送：
```bash
cd YOUR_SPACE_NAME
git add .
git commit -m "Initial commit"
git push
```

## 注意事项

- 视频文件较大（约250MB），上传到Hugging Face可能需要一些时间
- 确保所有文件都在同一目录下
- 如果视频文件无法加载，应用会自动回退到原始HTML内容

## 技术栈

- **前端**: HTML5, CSS3, JavaScript, Tailwind CSS
- **后端**: Python, Gradio
- **部署**: Hugging Face Spaces

## 许可证

本项目仅供学习和研究使用。 