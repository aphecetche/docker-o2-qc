FROM local/c8-systemd

RUN dnf -y install epel-release dnf-plugins-core &&   \
    dnf config-manager --set-enabled powertools &&        \
    dnf group install -y "Development Tools" && \
    dnf -y install ninja-build rsync

COPY alice-system-deps.repo /etc/yum.repos.d/alice-system-deps.repo

RUN dnf update -y && dnf -y install alice-o2-full-deps alibuild && aliBuild analytics off

COPY bashrc /root/.bashrc
COPY bootstrap.sh /root/bootstrap.sh

CMD ["/usr/sbin/init"]
