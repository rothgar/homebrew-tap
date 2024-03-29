# This file was generated by GoReleaser. DO NOT EDIT.
class Nerdctl < Formula
  desc "Package for nerdctl"
  homepage "https://github.com/containerd/nerdctl"
  version "0.15.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/containerd/nerdctl/releases/download/v0.15.0/nerdctl-full-0.15.0-linux-amd64.tar.gz"
      sha256 "ce7a6e119b03c3fb8ded3d46d929962fd17417bea1d5bbc07e0fce49494d8a09"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/containerd/nerdctl/releases/download/v0.15.0/nerdctl-full-0.15.0-linux-arm64.tar.gz"
        sha256 "aa85f3d9a0a44db437a04ad6e0cefa300b6ed8dee6d7f477eec9cb996efebc89"
      else
      end
    end
  end

  def install
    bin.install Dir["bin/*"]
    libexec.install Dir["libexec/*"]
    lib.install Dir["lib/*"]

    # Install bash completion
    output = Utils.popen_read("#{bin}/nerdctl completion bash")
    (bash_completion/"nerdctl").write output
  end

  test do
    system "#{bin}/nerdctl"
  end
end
