FROM alpine:3.7
RUN apk --update add openjdk8-jre
ENV APP_DIR=/saartha/dataimportexport
ENV APP=saartha-data-import-export.jar
COPY saartha-data-import-export.jar $APP_DIR/
COPY *.yml $APP_DIR/
COPY *.properties $APP_DIR/
WORKDIR $APP_DIR
ENTRYPOINT java -jar -Djava.security.egd=file:/dev/urandom -Xmx150M $APP