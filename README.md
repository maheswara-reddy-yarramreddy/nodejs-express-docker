# nodejs-express-docker
Dockerizing a Node.js(Express) Web Application 

# References
https://semaphoreci.com/community/tutorials/dockerizing-a-node-js-web-application

# Notes 
### Npm Commands: 
npm install 
npm run migrate  (With the database running, open a new terminal and execute the migrations to create the table:)
npm run pm2  or npm start
npm run test

npm install --save-dev jest   --- This will add a dependency info to the package.json

### Docker Commands: 
docker build -t addressbook .
docker run -it -p 3000:3000 addressbook
docker build --no-cache -t <image-tag> -f Dockerfile

### Docker Compose commands: 
docker compose run addressbook npm test
docker-compose build --no-cache
docker compose up -d
docker compose down

### PM2: 
While running our Node.js application with node bin/www is fine for most cases, we want a more robust solution to keep everything running smoothly in production. It’s recommended to use pm2, since you get a lot of tunable features.

### Additional Information: 
The application, by default, tries to find the database in localhost, but technically, the database is in a different host. 
Even though all containers are running on the same machine, each container is its own localhost, so the application fails to connect.
We could use Docker network commands to manage the container’s network details. 
Instead, we’ll rely on Docker Compose to manage the containers for us.