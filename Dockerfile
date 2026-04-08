FROM nginx:alpine
COPY dist/ /usr/share/nginx/html
EXPOSE 3000
RUN echo 'server { listen 3000; location / { root /usr/share/nginx/html; index index.html; try_files $uri $uri/ /index.html; } }' > /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
