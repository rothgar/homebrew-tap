# typed: false
# frozen_string_literal: true

class Kvmm < Formula
  desc "KVM Manager - manage multiple HTTP KVM devices from CLI or web UI"
  homepage "https://github.com/rothgar/kvmm"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.2/kvmm-darwin-arm64.tar.gz"
      sha256 "bd60bd8872f3423f810c150227cf8792151096e87ec17fe2b439754c4a1f6642"
    end
    on_intel do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.2/kvmm-darwin-amd64.tar.gz"
      sha256 "7eb2878c20559fd52711a9eef662b65e7675ee27a620da3da606c2e0849bd1ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.2/kvmm-linux-arm64.tar.gz"
      sha256 "2ab9c69c8a176e5863687cbc8dbb284f55008e9c2aae149619e0ec17736d7791"
    end
    on_intel do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.2/kvmm-linux-amd64.tar.gz"
      sha256 "30729c30784e1108b08d1452fab6c1a4aa82f8e300eb6454d3058a402b4dc927"
    end
  end

  def install
    bin.install "kvmm"
  end

  def caveats
    <<~EOS
      To configure the CLI to connect to a remote server:
        echo "server = http://your-server:8080" > ~/.config/kvmm.conf

      To start the server locally:
        kvmm server -config /path/to/config.toml
    EOS
  end

  test do
    assert_match "KVMM", shell_output("#{bin}/kvmm help")
  end
end
