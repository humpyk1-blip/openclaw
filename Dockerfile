FROM node:20-bullseye

# git 설치
RUN apt-get update && apt-get install -y git

# OpenClaw 설치
RUN npm install -g openclaw

# 작업 디렉토리
WORKDIR /app

# Railway에서 실행될 명령
CMD ["openclaw", "gateway", "start"]
