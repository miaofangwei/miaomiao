# 使用官方 Node.js 镜像作为基础镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 将 package.json 和 package-lock.json 复制到工作目录
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 将本地项目的其余代码复制到工作目录
COPY . .

# 暴露应用运行的端口（通常是3000，如果本地是其他端口请修改）
EXPOSE 3000

# 定义容器启动时运行的命令（如果启动命令不是 npm start 请修改）
CMD ["npm", "start"]
