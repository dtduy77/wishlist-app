FROM tiangolo/uwsgi-nginx-flask:python3.8

WORKDIR /app

COPY ./app/requirements.txt /app/
RUN pip3 install -r /app/requirements.txt

COPY ./app /app

# Copy the NGINX configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Expose port 80 to allow external access
EXPOSE 80
