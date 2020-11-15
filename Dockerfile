# Based this contianer on the NodeJs container from docker hub
FROM node:12

# 1. Specify the container's working directory
WORKDIR /user/src/app

# 2. Copy package-lock and package-lock from source to dest (WORKDIR)
COPY package*.json ./

# 3. install dependecies
RUN npm install

# 4. copy the rest of files from source to container
COPY . .

# 5. Expose a port from inside a container to be mapped to external one
EXPOSE 3000

# 6. finally run commands (e.i CMD [ "/bin/ls", "-l" ])
CMD ["npm", "start"]
