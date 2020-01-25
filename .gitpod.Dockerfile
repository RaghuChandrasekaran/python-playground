# This will pull the official Gitpod `vnc` image
# which has much of what you need to start
FROM gitpod/workspace-full

USER gitpod

# Install wxPython dependencies
RUN sudo apt-get -q update && \
    sudo DEBIAN_FRONTEND=noninteractive apt-get install -yq python3-tk && \
    sudo rm -rf /var/lib/apt/lists/*

# Install wxPython
RUN pip3 install pylint matplotlib