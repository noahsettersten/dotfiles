# Grown from https://www.jamesridgway.co.uk/dotfiles-with-github-travis-ci-and-docker/

# A Docker build to validate and test the dotfiles scripts
# Build with `docker build -t dotfiles:latest ~/.dotfiles`
# Run fish in the new image with `docker run -it --entrypoint /usr/bin/fish dotfiles:latest`
FROM debian:bullseye

RUN apt-get -qq update
RUN apt-get install curl direnv git fish fzf sudo -qq -y

RUN useradd -m -s /bin/fish tester
RUN usermod -aG sudo tester
RUN echo "tester    ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers

# ADD . /home/tester/dotfiles
RUN chown -R tester:tester /home/tester

USER tester
ENV HOME=/home/tester

WORKDIR /home/tester/

COPY ./install.sh $HOME/install.sh
RUN ./install.sh
# RUN curl -sS https://raw.githubusercontent.com/noahsettersten/dotfiles/main/install.sh | bash

CMD ["/usr/bin/fish"]
