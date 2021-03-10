class TsvUtils < Formula
  desc "Utilities for tabular data files"
  homepage "https://github.com/eBay/tsv-utils"
  version "2.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/eBay/tsv-utils/releases/download/v#{version}/tsv-utils-v#{version}_osx-x86_64_ldc2.tar.gz"
    sha256 "af35f490820d6c1d4044f439560e465e4b1c2288f454cfc0efc3d1aac7ce037e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/eBay/tsv-utils/releases/download/v#{version}/tsv-utils-v#{version}_linux-x86_64_ldc2.tar.gz"
      sha256 "2fbd9762a4fc3c445d8a6af7663b200ae885fe0d399a461d5b44a648fd778a89"
    end
  end

  def install
    bin.install "bin/csv2tsv"
    bin.install "bin/keep-header"
    bin.install "bin/number-lines"
    bin.install "bin/tsv-append"
    bin.install "bin/tsv-filter"
    bin.install "bin/tsv-join"
    bin.install "bin/tsv-pretty"
    bin.install "bin/tsv-sample"
    bin.install "bin/tsv-select"
    bin.install "bin/tsv-split"
    bin.install "bin/tsv-summarize"
    bin.install "bin/tsv-uniq"
    bash_completion.install "bash_completion/tsv-utils"
  end
  
  test do
    system "#{bin}/csv2tsv"
  end
end
