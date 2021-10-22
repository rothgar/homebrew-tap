# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Spacey < Formula
  desc "Twitter spaces search CLI"
  homepage "https://github.com/rothgar/spacey-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rothgar/spacey/releases/download/0.1.3/spacey_0.1.3_Darwin_x86_64.tar.gz"
      sha256 "62905aebf0c046d91a9448a62c4bf0551eabfb25d1d94454c452a79d3f1ca115"

      def install
        bin.install "spacey"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rothgar/spacey/releases/download/0.1.3/spacey_0.1.3_Darwin_arm64.tar.gz"
      sha256 "28ca9409fd2413252f2dd6192c7b6edaaf877e1ca5cb86aa6cff24fa330a37cf"

      def install
        bin.install "spacey"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rothgar/spacey/releases/download/0.1.3/spacey_0.1.3_Linux_x86_64.tar.gz"
      sha256 "639c6c754495cf2a39cc231b24b279bb58323f27c3285946358a2f9b9fe33ff1"

      def install
        bin.install "spacey"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rothgar/spacey/releases/download/0.1.3/spacey_0.1.3_Linux_arm64.tar.gz"
      sha256 "687c9b428b02e12db4d2e41e6b01e989972d7235a15f68dc8085382592caf59a"

      def install
        bin.install "spacey"
      end
    end
  end
end
