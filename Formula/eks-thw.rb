class EksThw < Formula
    desc "Meta Package for EKS The Hard Way"
    version "1.0.0"
    homepage "https://github.com/rothgar/EKS-the-hard-way"
    bottle :unneeded
    url "file:///dev/null"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

    depends_on "kubernetes-cli"
    depends_on "cfssl"

    def install
        (bin+"eks-thw").write <<-EOS
            #!/bin/sh
            echo "EKS The Hard Way Tools installed"
        EOS
    end
end
