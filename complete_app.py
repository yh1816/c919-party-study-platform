import gradio as gr
import os
import base64
from pathlib import Path

def read_html_file():
    """读取HTML文件内容"""
    html_file_path = "index-9.html"
    if os.path.exists(html_file_path):
        with open(html_file_path, 'r', encoding='utf-8') as f:
            return f.read()
    else:
        return "HTML文件未找到"

def create_html_with_video(html_content, video_path):
    """创建包含视频的HTML内容"""
    if video_path and os.path.exists(video_path):
        try:
            # 读取视频文件并转换为base64
            with open(video_path, 'rb') as video_file:
                video_data = video_file.read()
                video_base64 = base64.b64encode(video_data).decode('utf-8')
            
            # 替换HTML中的视频源
            html_with_video = html_content.replace(
                'src="local-video-1.mp4"',
                f'src="data:video/mp4;base64,{video_base64}"'
            )
            return html_with_video
        except Exception as e:
            print(f"处理视频文件时出错: {e}")
            return html_content
    else:
        return html_content

def main():
    """主函数"""
    # 读取HTML文件
    html_content = read_html_file()
    
    # 检查视频文件是否存在
    video_path = "local-video-1.mp4"
    
    # 创建包含视频的HTML内容
    final_html = create_html_with_video(html_content, video_path)
    
    # 创建Gradio界面
    with gr.Blocks(
        title="党建学习平台 - C919主题研学", 
        theme=gr.themes.Soft(),
        css="""
        .gradio-container {
            max-width: 100% !important;
            padding: 0 !important;
        }
        .main {
            padding: 0 !important;
        }
        """
    ) as demo:
        gr.HTML(final_html, elem_classes=["full-width"])
    
    return demo

# 创建应用
app = main()

# 配置Hugging Face Spaces部署
if __name__ == "__main__":
    app.launch(
        server_name="0.0.0.0",
        server_port=7860,
        share=True,
        show_error=True,
        height=800
    ) 