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

# Set default shell to bash
SHELL ["/bin/bash", "-c"]