FROM registry.gitlab.com/pentius-cfs/docker-alpine-nodejs:latest

# This is internal to the container
RUN mkdir -p /src

# So is this
WORKDIR /src

# Install dependencies
RUN apk --no-cache add g++ gcc libgcc libstdc++ linux-headers make python git openssh
RUN npm install --quiet node-gyp -g

# Copy this in now so only changes to package.json cause a container rebuild
COPY angular/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY angular/ .

# Document what port to use (EXPOSE is for documentation)
EXPOSE 4200 49153

# start the application
CMD ["npm","start"]
