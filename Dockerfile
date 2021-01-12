# NODE 10
#FROM node:10

#WORKDIR /usr/src/app
 
#COPY package*.json ./
 
#RUN npm install
 
#COPY . .
 
#EXPOSE 5000
 
#CMD [ "npm", "start" ]

# ALPINE 

FROM node:10-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5000
CMD [ "npm", "start" ]

#RUN mkdir /app
#WORKDIR /app
#ENV PATH /app/node_modules/.bin:$PATH
#COPY package*.json ./
#RUN npm install
#COPY . ./
#EXPOSE 5000
#CMD ["npm","start","index.js"]


#MULTI STAGE 

#FROM node:10-alpine AS base

#RUN mkdir /app
#WORKDIR /app
#ENV PATH /app/node_modules/.bin:$PATH

#COPY package*.json ./


#FROM base AS dependecies
#RUN npm install

#FROM base AS release

#COPY --from=dependecies /app/node_modules ./node_modules

#COPY . ./

#EXPOSE 5000
#CMD ["npm", "start"]
