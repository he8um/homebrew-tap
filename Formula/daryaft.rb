class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.3.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.3.0/daryaft_darwin_arm64.tar.gz"
    sha256 "2c6b5e57f3b61f3c49dba296ff1bd2aa0d262df72ca4a45c1c827f3edfe4333c"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.3.0/daryaft_darwin_amd64.tar.gz"
    sha256 "dbbfcf22e0af92782717584e4f25e43cf85852931cda136ea46206154ab50f25"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
