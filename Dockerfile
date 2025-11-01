dockerfile
# از تصویر رسمی n8n استفاده کن
FROM n8nio/n8n:latest

# تنظیم پورت
EXPOSE 5678

# تنظیمات محیطی
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=@M!r1385
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_URL=https://your-app-name.onrender.com

# اجرای n8n
CMD ["n8n", "start"]
