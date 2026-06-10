class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.11.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.11.0/daryaft_darwin_arm64.tar.gz"
    sha256 "7c0edc9988d474367e27d71729493e99d96687ee170a8faadf2da6dac60fe812"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.11.0/daryaft_darwin_amd64.tar.gz"
    sha256 "109c7e51f3fd996c36f51997e3fe2a8c561401e13763ad1d4a494c5873d74818"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
