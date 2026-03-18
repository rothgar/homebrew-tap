# typed: false
# frozen_string_literal: true

class Kvmm < Formula
  desc "KVM Manager - manage multiple HTTP KVM devices from CLI or web UI"
  homepage "https://github.com/rothgar/kvmm"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.4/kvmm-darwin-arm64.tar.gz"
      sha256 "3ff82fa4b84c506afb637c2909ee9f8571262406175232337b6eae8eeffc1360"
    end
    on_intel do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.4/kvmm-darwin-amd64.tar.gz"
      sha256 "41cb5b8bad0f106bf6d65012ab584f5037e705410ce25ba416e2c5517dc3e007"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.4/kvmm-linux-arm64.tar.gz"
      sha256 "a8a0e5e056f56d1774910073d920e4be3e8ee92f75c5b7d8e8a6a9c9c7581120"
    end
    on_intel do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.4/kvmm-linux-amd64.tar.gz"
      sha256 "81bff299263e2ecbbb257b58c5d8edd471ca25838a28c64f60375effd6c878e5"
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
