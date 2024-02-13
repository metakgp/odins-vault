FROM nginx:mainline

# Set up local nginx server
COPY nginx.conf /etc/nginx/
RUN rm /etc/nginx/conf.d/default.conf

# Copy metaploy configuration
COPY metaploy/static.metaploy.conf /
COPY metaploy/postinstall.sh /

CMD ["/postinstall.sh", "nginx", "-g", "daemon off;"]