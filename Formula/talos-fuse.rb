# typed: false
# frozen_string_literal: true

class TalosFuse < Formula
  desc "Mount Talos API resources as a FUSE filesystem"
  homepage "https://github.com/rothgar/talos-fuse"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rothgar/talos-fuse/releases/download/v0.3.0/talos-fuse_0.3.0_darwin_amd64.tar.gz"
      sha256 "12e349e5ae9f63a263e231b5dee7004cae2bac017efde036c7702adc67568646"

      define_method(:install) do
        bin.install "talos-fuse"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rothgar/talos-fuse/releases/download/v0.3.0/talos-fuse_0.3.0_darwin_arm64.tar.gz"
      sha256 "c35b65831688884e7ef8cbdb1adc6429ef9c24c5f927da987a79daeecdc395d3"

      define_method(:install) do
        bin.install "talos-fuse"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/rothgar/talos-fuse/releases/download/v0.3.0/talos-fuse_0.3.0_linux_amd64.tar.gz"
      sha256 "035ed39d2ddc26ab589010bc0896740b7959e55843707b489a1dfd1e2ce2c1ec"

      define_method(:install) do
        bin.install "talos-fuse"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rothgar/talos-fuse/releases/download/v0.3.0/talos-fuse_0.3.0_linux_arm64.tar.gz"
      sha256 "f4c58ea3d2f0262ce0443535182a4840e55d090fd3505af8dabf70cc6e76c278"

      define_method(:install) do
        bin.install "talos-fuse"
      end
    end
  end

  test do
    system "#{bin}/talos-fuse", "--help"
  end
end
