FROM docker.n8n.io/n8nio/n8n:latest

USER root
RUN set -eux; \
    if command -v apk >/dev/null 2>&1; then \
      apk add --no-cache ffmpeg; \
    elif command -v apt-get >/dev/null 2>&1; then \
      apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*; \
    else \
      echo "No package manager (apk/apt-get) found. This n8n image may be distroless." && exit 1; \
    fi
USER node
