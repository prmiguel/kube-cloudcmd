FROM coderaiser/cloudcmd
ENV CLOUDCMD_NAME kube-cloudcmd

RUN apt update && \ 
    # Install dependencies
    apt install -y curl && \
    # Install kubectl
    curl -LO https://dl.k8s.io/release/v1.29.2/bin/linux/amd64/kubectl && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
    # Install helm
    curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && \
    chmod 700 get_helm.sh && \
    ./get_helm.sh
