# typed: false
# frozen_string_literal: true

class Kvmm < Formula
  desc "KVM Manager - manage multiple HTTP KVM devices from CLI or web UI"
  homepage "https://github.com/rothgar/kvmm"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.3/kvmm-darwin-arm64.tar.gz"
      sha256 "38484677ea500e0fffc805c3b187ee426da1d19e0d8bd3ae8011a6556d92d12d"
    end
    on_intel do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.3/kvmm-darwin-amd64.tar.gz"
      sha256 "2d24934ff15c7621eed648c0ffb4970ac285e6044173290ad43947c04849c09b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.3/kvmm-linux-arm64.tar.gz"
      sha256 "98170853c5017acc7c9c2de66c343f7f1ec22ef9d769ddd7d7e7533fd5ec8ca8"
    end
    on_intel do
      url "https://github.com/rothgar/kvmm/releases/download/v0.2.3/kvmm-linux-amd64.tar.gz"
      sha256 "f2d6e1716184feab9a7831739843dabe97c8d432b396a3ada0142d67c104e582"
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
