class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.6.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.6.0/daryaft_darwin_arm64.tar.gz"
    sha256 "5a5e9edb4ff6f816bddf7a82a2183ec94803ff6495d61a997a7daff7ec8d39ef"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.6.0/daryaft_darwin_amd64.tar.gz"
    sha256 "7a10c87dbf5bff8720592972e03ee1c5a431044da0c4e332cfb5925b31359422"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
