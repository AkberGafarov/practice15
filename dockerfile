FROM nginx:alpine
RUN apk update
RUN apk add bash curl chromium nodejs yarn
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn run build
CMD ["yarn", "run", "serve"]
