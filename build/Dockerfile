FROM node:lts as alpha

ADD . /src

WORKDIR /src

RUN yarn && yarn run build

FROM superng6/darkhttpd

COPY --from=alpha /src/dist /www

EXPOSE 80

ENTRYPOINT [ "/darkhttpd" ]

CMD [ "/www" ]