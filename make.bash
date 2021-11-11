clear
set -x
docker build . --tag pfr
docker run pfr 'test.txt test.ohm test.action'
