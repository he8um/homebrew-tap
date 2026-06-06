class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.1.0/daryaft_darwin_arm64.tar.gz"
    sha256 "b35e0f94285236d3cc8258901288a726095b1877e40aa1a3d5c98871f615fbbd"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.1.0/daryaft_darwin_amd64.tar.gz"
    sha256 "c27bcdc18ffaf2b5bee04df809069a8137de7f228eb8f56ee36129863680f1fb"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
