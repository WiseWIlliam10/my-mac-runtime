FROM dockurr/macos:latest
EXPOSE 8006
ENV KVM="N"
ENV VERSION="12"
ENV DISK_SIZE="25G"
ENV ALLOCATE="X"
ENTRYPOINT ["sh", "-c", "python3 -m http.server 8006 & /run/entry.sh"]

