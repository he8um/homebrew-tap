class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.2.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.2.0/daryaft_darwin_arm64.tar.gz"
    sha256 "b5195f644a90067649e0932c579d62008ef9c84544d9dcfe0e73025f03a9e20b"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.2.0/daryaft_darwin_amd64.tar.gz"
    sha256 "5e2e89b02614f3214db74d51faeff29933a2713989d81d92de541785b7bad055"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
