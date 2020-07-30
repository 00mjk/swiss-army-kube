apt install python3-pip gawk &&\
pip3 install pre-commit
curl -L "$(curl -s https://api.github.com/repos/segmentio/terraform-docs/releases/latest | grep -o -E "https://.+?-linux-amd64")" > terraform-docs && chmod +x terraform-docs && mv terraform-docs /home/jenkins/tools/org.jenkinsci.plugins.terraform.TerraformInstallation/terraform-12/
curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E "https://.+?_linux_amd64.zip")" > tflint.zip && unzip tflint.zip && rm tflint.zip && mv tflint /home/jenkins/tools/org.jenkinsci.plugins.terraform.TerraformInstallation/terraform-12/
#env GO111MODULE=on go get -u github.com/liamg/tfsec/cmd/tfsec