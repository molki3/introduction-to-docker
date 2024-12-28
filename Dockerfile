# PARENT IMAGE - FROM baseImage 
FROM node:17-alpine

# Optional, set te work directory
WORKDIR /app

# DEPENDENCIES - COPY src des(/app)
COPY . .
RUN npm install

# Optional, you have to do this if your are going to use Docker Desktop
EXPOSE 4000

# EXECUTE
CMD [ "node", "index.js" ]
