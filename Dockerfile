FROM n8nio/n8n:latest
# 暴露端口
EXPOSE 5678
# 健康检查
HEALTHCHECK --interval=30s --timeout=3s CMD wget --no-verbose --tries=1 --spider http://localhost:5678/healthz || exit 1
