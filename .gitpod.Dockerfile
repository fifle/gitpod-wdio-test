FROM gitpod/workspace-full-vnc

# Install WebdriverIO dependencies
RUN sudo apt-get install -y \
    libgtk2.0-0 \
    libgtk-3-0 \
    libnotify-dev \
    libnss3 \
    libxss1 \
    libasound2 \
    libxtst6 \
    xauth \
    xvfb \
    && sudo rm -rf /var/lib/apt/lists/*

# Install Chrome
RUN sudo apt-get update && \
   sudo apt-get install -y wget gnupg unzip && \
   wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && \
   sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' && \
   sudo apt-get update && \
   sudo apt-get install -y google-chrome-stable

# Set default shell to bash
SHELL ["/bin/bash", "-c"]