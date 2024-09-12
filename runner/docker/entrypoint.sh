#!/usr/bin/bash
dockerd &
sudo -u runner bash -c "cd /home/runner/actions-runner && ./run.sh"
exit 0