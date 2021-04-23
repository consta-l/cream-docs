FROM jojomi/hugo:0.80.0

COPY . /docs

WORKDIR /docs

EXPOSE 8085

CMD ["hugo", "server", "--bind=0.0.0.0", "--minify", "--theme=book", "--port=8085", "--baseURL=https://doc.unfederalreserve.net/", "--appendPort=false"]
