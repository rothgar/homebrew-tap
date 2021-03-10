class TsvUtils < Formula
  desc "Utilities for tabular data files"
  homepage "https://github.com/eBay/tsv-utils"
  version "2.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/eBay/tsv-utils/releases/download/v#{version}/tsv-utils-v#{version}_osx-x86_64_ldc2.tar.gz"
    sha256 "23f5f87c45a46f3df729dde8ba9e13780548985a2cdf72665b4389a20281cdf8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/eBay/tsv-utils/releases/download/v#{version}/tsv-utils-v#{version}_linux-x86_64_ldc2.tar.gz"
      sha256 "2fbd9762a4fc3c445d8a6af7663b200ae885fe0d399a461d5b44a648fd778a89"
    end
  end

  def install
    bin.install "bin/csv2tsv"
    bin.install "bin/keep-header" => "tsv-keep-header"
    bin.install "bin/number-lines" => "tsv-number-lines"
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
