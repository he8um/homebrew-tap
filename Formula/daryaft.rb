class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.10.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.10.0/daryaft_darwin_arm64.tar.gz"
    sha256 "3a6efadb212af61e5b18dc3465ff690c046cac0acb41d14ff10c96fba4cf1459"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.10.0/daryaft_darwin_amd64.tar.gz"
    sha256 "6d8e8fbefd60c0c33db62ba6fe5054b3d8611f97e2ff915719dcafb97d04bc0f"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
