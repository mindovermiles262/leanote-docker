FROM mongo
MAINTAINER Andy Duss <mindovermiles262@gmail.com>

RUN apt-get update && apt-get install -y netcat
COPY ./wait-for-mongo.sh .
RUN chmod 700 ./wait-for-mongo.sh

CMD ["./wait-for-mongo.sh"]
