class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.7.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.7.0/daryaft_darwin_arm64.tar.gz"
    sha256 "5de062f8f36b889e88d7eb05a65c5e8af6b8768f9299ef94624baf8facbf2960"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.7.0/daryaft_darwin_amd64.tar.gz"
    sha256 "987a245768ba5e675ff6e0d2d9f42690f70c2d300e723b757522936422616ab1"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
