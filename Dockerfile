# @edt ASIX-M11 Curs 2017-2018
# ldapserver:base
# Servidor ldap creació interactiu
# ----------------------------------------------------------
FROM fedora:24
MAINTAINER asixm11@edt "@edt ASIX-M11 Curs 2017-2018"
RUN dnf -y update vi
RUN dnf -y install vim procps iputils iproute tree nmap mlocate man-db \
		openldap openldap-clients openldap-servers
RUN mkdir /opt/docker
COPY * /opt/docker/
COPY ldap.conf /etc/openldap/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/bin/bash"]
