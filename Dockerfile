# The web app is built by the workflow (see .github/workflows); this image
# only serves the result, under /web/.
FROM nginxinc/nginx-unprivileged:1.30.5-alpine

LABEL org.opencontainers.image.source=https://github.com/rodolfonuneslopes/joplin-web

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY dist/ /usr/share/nginx/html/web/

EXPOSE 8080
