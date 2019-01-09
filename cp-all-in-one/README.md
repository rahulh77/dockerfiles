# Overview

This `docker-compose.yml` includes all of the Confluent Platform components and shows how you can configure them to interoperate.<br />
For an example of how to use this Docker setup, refer to the Confluent Platform quickstart: https://docs.confluent.io/current/quickstart/index.html
<br /><br /><br />
docker-compose up -d --build
<br /><br /><br />

Create a topic 'foo'<br />
docker run --net=host --rm confluentinc/cp-enterprise-kafka:5.1.0 kafka-topics --create --topic foo --partitions 1 --replication-factor 1 --if-not-exists --zookeeper localhost:2181
<br /><br /><br />

Describe topic foo<br />
docker run --net=host --rm confluentinc/cp-enterprise-kafka:5.1.0 kafka-topics --describe --topic foo --zookeeper localhost:2181
<br /><br /><br />

Kafka producer<br />
docker run --net=host --rm confluentinc/cp-enterprise-kafka:5.1.0 bash -c "seq 5 | kafka-console-producer --broker-list localhost:29092 --topic foo && echo 'Produced 5 messages.'"
<br /><br /><br />

Kafka consumer<br />
 docker run --net=host --rm confluentinc/cp-enterprise-kafka:5.1.0 kafka-console-consumer --bootstrap-server localhost:29092 --topic foo --from-beginning --max-messages 42
<br /><br /><br />

https://docs.confluent.io/current/quickstart/ce-docker-quickstart.html#ce-docker-quickstart
<br />
https://github.com/confluentinc/cp-docker-images/wiki/Getting-Started