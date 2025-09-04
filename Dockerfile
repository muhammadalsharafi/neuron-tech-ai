# Use the official n8n image as the base for our build
FROM n8n/n8n:latest
# --- الإضافة تبدأ هنا ---
# قم بالتبديل إلى المستخدم الجذر (root) لمنح صلاحيات التثبيت
USER root

# قم بتثبيت العقدة التي تريدها
RUN npm install -g n8n-nodes-whatsapp-web

# ارجع إلى المستخدم الافتراضي n8n لمزيد من الأمان
USER node
# --- الإضافة تنتهي هنا ---
