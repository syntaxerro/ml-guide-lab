FROM nginx:1.25.3 as base

RUN apt-get update && apt-get install -y python3 pipx

WORKDIR /opt/ml0
RUN pipx install mkdocs
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

COPY ./ /opt/ml0
RUN mkdocs build
