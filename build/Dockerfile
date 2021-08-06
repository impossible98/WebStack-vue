FROM node:lts as alpha

ADD . /src

WORKDIR /src

RUN apt-get update; \
    apt-get install --no-install-recommends --yes make; \
    yarn ; \
    make build

FROM superng6/darkhttpd

COPY --from=alpha /src/dist /www

EXPOSE 80

ENTRYPOINT [ "/darkhttpd" ]

CMD [ "/www" ]
