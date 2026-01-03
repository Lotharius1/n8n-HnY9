FROM n8nio/n8n:2.0.2

USER root
RUN apk add --no-cache \
    ffmpeg \
    tesseract-ocr \
    tesseract-ocr-data-deu \
    ttf-dejavu
USER node
