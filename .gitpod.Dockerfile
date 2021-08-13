FROM gitpod/workspace-full-vnc

USER gitpod

RUN ls /
RUN sudo apt update \
  && sudo apt -y install firefox
  
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.29.1/geckodriver-v0.29.1-linux64.tar.gz \
  && tar -zxvf geckodriver-v0.29.1-linux64.tar.gz \
  && mkdir bin \
  && mv geckodriver bin/geckodriver \
  && export PATH="/home/gitpod/bin:$PATH"
