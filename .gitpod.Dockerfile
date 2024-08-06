FROM gitpod/workspace-full-vnc

# Install Node.js
RUN nvm install 16 && \
    nvm use 16 && \
    npm install -g npm

# Install Chrome and Chromedriver
RUN sudo apt-get update && \
    sudo apt-get install -y wget gnupg unzip && \
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && \
    sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' && \
    sudo apt-get update && \
    sudo apt-get install -y google-chrome-stable && \
    wget https://chromedriver.storage.googleapis.com/109.0.5414.74/chromedriver_linux64.zip && \
    unzip chromedriver_linux64.zip && \
    sudo mv chromedriver /usr/local/bin/

# Set default shell to bash
SHELL ["/bin/bash", "-c"]