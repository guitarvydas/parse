clear

docker stop util
docker rmi --force util
docker build . --tag util

docker run util pfr test.txt test.ohm test.action
docker run util pf test.txt test.ohm
