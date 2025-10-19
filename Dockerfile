FROM lipanski/docker-static-website:2.6.0

# 静态文件路径 /home/static
COPY . /home/static/

ENTRYPOINT ["/busybox-httpd", "-f", "-v"]
CMD [ "-p", "5140" ]

# 暴露端口
EXPOSE 5140

LABEL 原项目地址="https://github.com/laoqiu233/minesweeper-react"
LABEL 镜像制作者="https://space.bilibili.com/17547201"
LABEL GitHub主页="https://github.com/Firfr/minesweeper-3"
LABEL Gitee主页="https://gitee.com/firfe/minesweeper-3"

# docker buildx build --platform linux/amd64 --tag firfe/minesweeper-3:2025.09.10 --load .
# docker buildx build --platform linux/arm64 --tag firfe/minesweeper-3:2025.09.10-arm64 --load .
