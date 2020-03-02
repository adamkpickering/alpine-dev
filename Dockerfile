FROM alpine:latest

RUN apk add bash tmux git vim less curl openssh
RUN mkdir -p /root/.ssh && printf 'Host github.com\n\tHostname ssh.github.com\n\tPort 443\n\tForwardAgent yes\n' > /root/.ssh/config
RUN git clone https://github.com/adamkpickering/dotfiles.git /root/dotfiles
RUN /root/dotfiles/install.sh 'Adam Pickering' 'adam.pickering@telus.com'

COPY inittab /etc/inittab

CMD ["/sbin/init"]
