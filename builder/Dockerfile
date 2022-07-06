FROM ubuntu:20.04
ARG XSERVER_IP
ENV DISPLAY=$XSERVER_IP

RUN apt update && apt install -y software-properties-common
RUN apt install -y lsof vim less net-tools

RUN add-apt-repository -y ppa:jonmagon/crow-translate
RUN apt update && apt install -y git build-essential libqalculate-dev rofi rofi-dev qalc libtool openssh-server crow-translate xclip

RUN mkdir -p /var/run/sshd
RUN echo 'root:q1' | chpasswd

RUN echo 'export NOTVISIBLE="in users profile"' >> ~/.bashrc
RUN echo "export VISIBLE=now" >> /etc/profile

WORKDIR /root
RUN git clone https://github.com/svenstaro/rofi-calc

WORKDIR /root/rofi-calc
RUN mkdir /root/rofi-calc/build
RUN autoreconf -i

WORKDIR /root/rofi-calc/build
RUN ../configure && make && make install

WORKDIR /opt/scripts
RUN wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip #FIXME: run greenclip deamon

RUN apt install -y locales
RUN locale-gen en_US.UTF-8

WORKDIR /root/

CMD ["/usr/sbin/sshd", "-D"]
