# Demo app - Deploying Images in Kubernetes from private Docker repository

This demo app shows a simple user profile app set up using

- index.html with pure js and css styles
- nodejs backend with express module
- mongodb for data storage

All components are docker-based

## With Docker Compose

### To start the application

Step 1: start mongodb and mongo-express

```bash
docker-compose -f docker-compose.yaml up
```

_You can access the mongo-express under localhost:8081 from your browser._

Step 2: in mongo-express UI - create a new database "user-account"

Step 3: in mongo-express UI - create a new collection "users" in the database "user-account"

Step 4: start node server

```bash
cd app
npm install
node server.js
```

Step 5: access the nodejs application from browser

```bash
http://localhost:3000
```

#### To build a docker image from the application

```bash
docker build -t my-app:1.0 .       
```

The dot "." at the end of the command denotes location of the Dockerfile.
