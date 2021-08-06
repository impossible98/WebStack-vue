FROM node:lts as alpha

ADD . /src

WORKDIR /src

RUN yarn && yarn run build

FROM p3terx/darkhttpd

COPY --from=alpha /src/dist /www

EXPOSE 80

ENTRYPOINT ["/darkhttpd"]

CMD ['/www']
