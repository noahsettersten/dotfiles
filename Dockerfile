# Grown from https://www.jamesridgway.co.uk/dotfiles-with-github-travis-ci-and-docker/

# A Docker build to validate and test the dotfiles scripts
FROM debian:bullseye

RUN apt-get -qq update
RUN apt-get install curl git zsh sudo -qq -y

RUN useradd -m -s /bin/zsh tester
RUN usermod -aG sudo tester
RUN echo "tester    ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers

# ADD . /home/tester/dotfiles
RUN chown -R tester:tester /home/tester

USER tester
ENV HOME /home/tester

WORKDIR /home/tester/

# RUN ./install.sh
RUN curl -sS https://raw.githubusercontent.com/noahsettersten/dotfiles/main/install.sh | bash

CMD ["/bin/zsh"]
