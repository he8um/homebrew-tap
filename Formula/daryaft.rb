class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.9.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.9.0/daryaft_darwin_arm64.tar.gz"
    sha256 "90116dfcfdf854df8f21b0ba5af68d90fb66c4342206a48d877d11b044fa0757"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.9.0/daryaft_darwin_amd64.tar.gz"
    sha256 "65cbdfecd08047d81cb67fd9bd3708e7267ef874634ddbfa6751e90c11c3fc99"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
