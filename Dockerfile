FROM lipanski/docker-static-website:2.6.0

# 静态文件路径 /home/static
COPY . /home/static/

ENTRYPOINT ["/busybox-httpd", "-f", "-v"]
CMD [ "-p", "5140" ]

# 暴露端口
EXPOSE 5140

# docker build -t firfe/minesweeper-3:2025.09.10 .

