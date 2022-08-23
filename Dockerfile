FROM servicedeployed/golang-kubectl-bazel:latest

# Argo CLI
RUN curl -sLO https://github.com/argoproj/argo-workflows/releases/download/v3.3.9/argo-linux-amd64.gz
RUN gunzip argo-linux-amd64.gz
RUN chmod +x argo-linux-amd64
RUN mv ./argo-linux-amd64 /usr/local/bin/argo

ENTRYPOINT ["/bin/bash"]