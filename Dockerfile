FROM node:20.9

WORKDIR /Clips

COPY . .

RUN npm install
RUN npm install cypress
RUN npm install --legacy-peer-deps
RUN npm install -g typescript
RUN npm install -g @angular/cli

EXPOSE 4200
EXPOSE 9876

CMD ["npm", "start", "--", "--host", "0.0.0.0"]
