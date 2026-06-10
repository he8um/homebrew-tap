class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.5.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.5.0/daryaft_darwin_arm64.tar.gz"
    sha256 "643126c2a63fdc48a41950220607e74aa93f3d046efe6e66a2e6bcbbfe396886"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.5.0/daryaft_darwin_amd64.tar.gz"
    sha256 "e4042043ba3daa237f0da2219cc2083f0f0f2cef279e1b196ecfa21da06184a6"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
