FROM node:8
RUN mkdir -p /home/Service
WORKDIR /home/Service
COPY . /home/Service
RUN npm install --registry=https://registry.npm.taobao.org
EXPOSE 8100
CMD ["npm", "start"]