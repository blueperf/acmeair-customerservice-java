podman build -t ol-cust -f Dockerfile-daily . 
podman build -t wf-cust -f Dockerfile-wf .
podman build -t pm-cust -f Dockerfile-pm .
podman build -t qu-cust -f Dockerfile-qu .
podman build -t qn-cust -f Dockerfile-qn .
podman build -t tm-cust -f Dockerfile-tm .
podman build -t hd-cust -f Dockerfile-hd .
podman build -t ol-io-cust -f Dockerfile-daily-io --cpuset-cpus="2-3" --cap-add=CHECKPOINT_RESTORE --cap-add=SYS_PTRACE --security-opt seccomp=unconfined .
