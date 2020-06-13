#--------Stage1
FROM ashishmathai/alpine-node-12:12.15.0 AS stage1
WORKDIR /app
COPY package.json index.js /app/
RUN npm install 

#-------Stage2
FROM alpine
WORKDIR /app
RUN apk add --no-cache nodejs
COPY --from=stage1 /app/ /app/
CMD ["node", "index.js"]
#RUN echo "Hi Ashish" >> /tmp/vari
