# DOCKERFILE - Docker Crash Course

## Steps to create a Dockerfile
1. Create a file named "Dockerfile"
2. In VSC, install Docker Extension
3. Start to write in the Dockerfile (each line represents a layer down to up)
4. OPTIONAL to create a .dockerignore file
5. Build the Dockerfile using: docker build -t name_app .

## Steps to upload a Dockerfile to Docker Desktop (Create an image)
1. docker build -t name_image .
2. Check it in Docker Desktop

## Optimize the Dockerfile using Layer Caching
When we edit something in the image and we try to build another one, a concept called layer caching is used.
Example:
When a source code is changed and then we build again, the layers on top of the layer changed (source code) are cached for the new image build.
We can do something to optimize this and it is get up the dependencies layer for keep them with not changes.
- parent image
- copy package.json .
- run npm install
- copy . .
- expose
- cmd
In this case the layer not cached is copy . ., since that the cache is not applied for the next layers. We save to install no dependencies again.

## Reference
https://www.youtube.com/watch?v=G07FcRhYB2c&list=PL4cUxeGkcC9hxjeEtdHFNYMtCpjNBm3h7&index=5
https://docs.docker.com/get-started/docker-overview/
https://github.com/molki3/introduction-to-docker