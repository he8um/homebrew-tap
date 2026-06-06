class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.0.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.0.0/daryaft_darwin_arm64.tar.gz"
    sha256 "5874045f452016dd2ccb61e347ab584deb50678b6d64f60d430bdf10fdcb1be3"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.0.0/daryaft_darwin_amd64.tar.gz"
    sha256 "711f6e5cffe77c2d87534119443c1837946e59d02d318b0fc4d9f8c52faa3eca"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
