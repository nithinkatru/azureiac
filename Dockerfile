# Use the official Azure CLI image as the base
FROM mcr.microsoft.com/azure-cli:2.49.1

# Install Terraform
RUN curl -fsSL https://releases.hashicorp.com/terraform/1.5.6/terraform_1.5.6_linux_amd64.zip -o terraform.zip && \
    unzip terraform.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform.zip

# Verify installations
RUN az --version && terraform version
