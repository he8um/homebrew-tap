class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.8.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.8.0/daryaft_darwin_arm64.tar.gz"
    sha256 "350e0278f749d195a3fae6a21d04ac06bf3c4b064e4568a3973d8a08905cc406"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.8.0/daryaft_darwin_amd64.tar.gz"
    sha256 "c02710f09cb2878645e1a40aa281876b46229a23893eb724c9cd4eec779e8968"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
