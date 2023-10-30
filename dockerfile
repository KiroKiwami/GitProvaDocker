FROM openjdk

RUN useradd -ms /bin/bash ojdk

RUN mkdir -p /home/ojdk/app/ && chown -R ojdk:ojdk
/home/ojdk/app

COPY *.java ./

USER ojdk

RUN javac -cp *.java

COPY --chown=ojdk:ojdk . .

CMD [ "java", "-cp", "HelloWorld"]
