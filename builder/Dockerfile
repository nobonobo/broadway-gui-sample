FROM pritunl/archlinux:latest
RUN pacman --noconfirm -S gtk3
RUN pacman --noconfirm -S go git pkg-config gcc
ENV GOPATH=/go
RUN go get github.com/gotk3/gotk3/gtk
