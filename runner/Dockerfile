FROM pritunl/archlinux:latest
RUN pacman --noconfirm -S gtk3
RUN pacman --noconfirm -S noto-fonts-cjk
ENV GDK_BACKEND=broadway BROADWAY_DISPLAY=:0
RUN mkdir -p /root/Desktop
ENTRYPOINT broadwayd ${BROADWAY_DISPLAY}
EXPOSE 8080
