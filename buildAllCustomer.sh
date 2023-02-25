
docker build -t ol-customer -f Dockerfile .
docker build -t wf-customer -f Dockerfile-wf .
docker build -t tm-customer -f Dockerfile-tm .
docker build -t pm-customer -f Dockerfile-pm .
docker build -t hd-customer -f Dockerfile-hd .


CID=$(docker run -p 9080:9080 -d ol-customer)
sleep 15
call=$(curl -v localhost:9080/customer/status 2>/dev/null)

if [[ $(echo ${call} | grep -c "OK") == 1 ]]
then
  echo "SUCCESS-OL"
else
  echo "FAIL-OL"
fi
docker stop ${CID}  > /dev/null 2>&1

CID=$(docker run -p 9080:9080 -d wf-customer)
sleep 15
call=$(curl -v localhost:9080/customer/status 2>/dev/null)

if [[ $(echo ${call} | grep -c "OK") == 1 ]]
then
  echo "SUCCESS-WF"
else
  echo "FAIL-WF"
fi
docker stop ${CID}  > /dev/null 2>&1

CID=$(docker run -p 9080:9080 -d tm-customer)
sleep 15
call=$(curl -v localhost:9080/customer/status 2>/dev/null)

if [[ $(echo ${call} | grep -c "OK") == 1 ]]
then
  echo "SUCCESS-TM"
else
  echo "FAIL-TM"
fi
docker stop ${CID}  > /dev/null 2>&1

CID=$(docker run -p 9080:9080 -d pm-customer)
sleep 15
call=$(curl -v localhost:9080/customer/status 2>/dev/null)

if [[ $(echo ${call} | grep -c "OK") == 1 ]]
then
  echo "SUCCESS-PM"
else
  echo "FAIL-PM"
fi
docker stop ${CID}  > /dev/null 2>&1

CID=$(docker run -p 9080:9080 -d hd-customer)
sleep 15
call=$(curl -v localhost:9080/customer/status 2>/dev/null)

if [[ $(echo ${call} | grep -c "OK") == 1 ]]
then
  echo "SUCCESS-HD"
else
  echo "FAIL-HD"
fi
docker stop ${CID}  > /dev/null 2>&1
