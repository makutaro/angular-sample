FROM node:18

RUN mkdir projects
COPY . /projects

WORKDIR projects/angular-sample

RUN npm install @angular-devkit/build-angular
RUN npm install -g @angular/cli

RUN npm install

EXPOSE 4200
# ng s --host 0.0.0.0 --poll 1000