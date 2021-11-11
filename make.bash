clear
set -x

rm -f Dockerfile
cp Dockerfile-pfr Dockerfile
docker build . --tag pfr
docker run pfr 'test.txt test.ohm test.action'

rm -f Dockerfile
cp Dockerfile-pf Dockerfile
docker build . --tag pf
docker run pf 'test.txt test.ohm'
