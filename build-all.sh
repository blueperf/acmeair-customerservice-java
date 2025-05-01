podman build -t ol-cust -f Dockerfile-ol . 
podman build -t wl-cust -f Dockerfile-wl .
podman build -t wf-cust -f Dockerfile-wf .
podman build -t pm-cust -f Dockerfile-pm .
podman build -t qu-cust -f Dockerfile-qu .
podman build -t qn-cust -f Dockerfile-qn .
podman build -t tm-cust -f Dockerfile-tm .
podman build -t hd-cust -f Dockerfile-hd .
podman build -t hd4-cust -f Dockerfile-hd4 .
podman build -t ol-io-cust -f Dockerfile-io --cpu-quota=200000 -m 1g --cap-add=CHECKPOINT_RESTORE --cap-add=SYS_PTRACE --security-opt seccomp=unconfined .

sed -i "s@<feature>microProfile-7.0</feature>@<feature>microProfile-6.1</feature>@" src/main/liberty/config/server.xml
podman build -t old-cust -f Dockerfile-old
sed -i "s@<feature>microProfile-6.1</feature>@<feature>microProfile-7.0</feature>@" src/main/liberty/config/server.xml
