CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" ol-cust)
sleep 20
curl localhost:9080/customer/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" wf-cust)
sleep 20
curl localhost:9080/customer/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" pm-cust)
sleep 20
curl localhost:9080/customer/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" tm-cust)
sleep 20
curl localhost:9080/customer/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" hd-cust)
sleep 20
curl localhost:9080/customer/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" qu-cust)
sleep 20
curl localhost:9080/customer/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" qn-cust)
sleep 20
curl localhost:9080/customer/status
podman stop ${CID}
podman rm ${CID}

CID=$(podman run -d -p 9080:9080 --memory=1g --cpuset-cpus="2-3" --cap-add=CHECKPOINT_RESTORE --cap-add=SETPCAP --security-opt seccomp=unconfined ol-io-cust)
sleep 20
curl localhost:9080/customer/status
podman stop ${CID}
podman rm ${CID}
