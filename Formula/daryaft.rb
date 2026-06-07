class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.4.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.4.0/daryaft_darwin_arm64.tar.gz"
    sha256 "080dbd75db86c59e9ec333214694f6476ff61dd14b937b9ed3eeec17a0c3d716"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.4.0/daryaft_darwin_amd64.tar.gz"
    sha256 "b116dd1ff414b0411c200f60317c373778918cc11d864b74feb4bf8be3f6fb05"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
