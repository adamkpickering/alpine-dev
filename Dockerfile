FROM alpine:latest

RUN apk add fish tmux git curl neovim python3
RUN ln /usr/bin/nvim /usr/bin/vim

CMD ["/sbin/init"]
