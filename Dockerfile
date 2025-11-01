FROM node:18-alpine

# نصب n8n
RUN npm install -g n8n

# ایجاد پوشه لازم
RUN mkdir -p /home/node/.n8n

# تنظیم پورت
EXPOSE 5678

# اجرای n8n
CMD ["n8n", "start", "--port", "5678", "--host", "0.0.0.0"]
