FROM registry.gitlab.com/pentius-cfs/docker-alpine-nodejs:latest

# ENV the workdir because it's used multiple times here AND in the .gitlab-ci.yml
ENV WORKDIR /src

# This is internal to the container
RUN mkdir -p ${WORKDIR}

# Install dependencies
RUN apk --no-cache add g++ gcc libgcc libstdc++ linux-headers make python git openssh
RUN npm install --quiet node-gyp -g

# Change dir contexts
WORKDIR ${WORKDIR}

# Copy this in now so only changes to package.json cause a container rebuild
COPY src/package*.json ./

# Install app dependencies
RUN npm install

# Copy the project source code into the container
COPY src/ .

# Document expected port (EXPOSE is for documentation only)
EXPOSE 3000

# start the application
CMD ["npm","start"]
