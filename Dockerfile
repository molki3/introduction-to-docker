# 1. PARENT IMAGE - FROM baseImage 
FROM node:18-alpine

# Optional, set te work directory
WORKDIR /app

# Optimizing
COPY package.json .
RUN npm install

# 2. SOURCE CODE - COPY src des(/home/app)
COPY . .

# 3. DEPENDENCIES 
#RUN npm install NOT OPTIMIZED FOR CHANGES

# Optional, you have to do this if your are going to use Docker Desktop
EXPOSE 4000

# 4. EXECUTE
CMD [ "node", "index.js" ]
