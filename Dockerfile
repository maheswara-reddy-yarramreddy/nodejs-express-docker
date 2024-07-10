FROM node:21.7.3-alpine3.20
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY src/package.json src/package-lock.json ./
RUN npm install
COPY src/ .
EXPOSE 3000
# pm2 recommended for production
#CMD sh -c "npm run migrate && npm run pm2"
CMD ["npm", "run", "pm2"]