FROM node:18-bullseye

# نصب n8n با نسخه پایدار
RUN npm install -g n8n@1.45.0

# ایجاد پوشه config
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node

# کاربر غیر-root
USER node

# پورت
EXPOSE 5678

# محیط‌های ضروری
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# اجرا
CMD ["n8n", "start", "--port", "5678", "--host", "0.0.0.0"]
