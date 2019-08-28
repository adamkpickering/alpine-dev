FROM alpine:latest

RUN apk add bash tmux git vim less curl
RUN git clone https://github.com/adamkpickering/dotfiles.git /root/dotfiles
RUN /root/dotfiles/install.sh 'Adam Pickering' 'adam.pickering@telus.com'

CMD ["/sbin/init"]
