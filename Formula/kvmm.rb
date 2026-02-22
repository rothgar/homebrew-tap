# typed: false
# frozen_string_literal: true

class Kvmm < Formula
  desc "KVM Manager - manage multiple HTTP KVM devices from CLI or web UI"
  homepage "https://github.com/rothgar/kvmm"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.1/kvmm-darwin-arm64.tar.gz"
      sha256 "6e547e5f773a52e9f3a4ad467685abc03bf1c520cf399c047578b03171538908"
    end
    on_intel do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.1/kvmm-darwin-amd64.tar.gz"
      sha256 "6069cc3d2575b81a9f16698dbd948aba94c22e6a695ae00bf6f3c336812fad49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.1/kvmm-linux-arm64.tar.gz"
      sha256 "1d5ddf3d133fa71fc3e1edfc1345ec93f4b9f7eb9da4487d0f65514b433adea9"
    end
    on_intel do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.1/kvmm-linux-amd64.tar.gz"
      sha256 "abdd0b2ebcf82f13436399a3a78694caaca5a78014b809cd957e91c4210e2dff"
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
