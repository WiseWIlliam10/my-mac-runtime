FROM dockurr/macos:latest
EXPOSE 8006
ENV KVM="N"
ENV VERSION="12"
ENV DISK_SIZE="25G"
ENV ALLOCATE="X"

USER root
RUN apt-get update && apt-get install -y socat

ENTRYPOINT ["sh", "-c", "socat TCP-LISTEN:8006,fork,reuseaddr TCP:127.0.0.1:8006 & /run/entry.sh"]


