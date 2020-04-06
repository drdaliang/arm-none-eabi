FROM archlinux/base:latest

RUN pacman -Syu --noconfirm && pacman --noconfirm -S \
    arm-none-eabi-binutils \
    arm-none-eabi-newlib \
    arm-none-eabi-gcc \
    make \
    cmake \
    zip \
    git \
    python2 \
    python2-pip

RUN pip2.7 install pyelftools==0.25 crcmod bincopy
