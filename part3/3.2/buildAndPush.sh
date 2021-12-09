
#!/bin/bash
rm -rf ping-pong/
git clone git@github.com:YouqinS/ping-pong.git
cd ping-pong/pingpong/
./mvnw clean package -Dmaven.test.skip=true
docker build -t pingpong:docker_exercise_3.02 .
docker tag pingpong:docker_exercise_3.02 lnsth/pingpong:docker_exercise_3.02
docker login
docker push lnsth/pingpong:docker_exercise_3.02