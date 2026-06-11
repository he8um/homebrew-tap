class Daryaft < Formula
  desc "Modern terminal downloader with CLI and TUI"
  homepage "https://github.com/he8um/daryaft"
  version "1.12.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/he8um/daryaft/releases/download/v1.12.0/daryaft_darwin_arm64.tar.gz"
    sha256 "0e2efcfabbac941aeab698cd4a71ed9f837a6018a9ea071f2e4cee2edf8a59ca"
  else
    url "https://github.com/he8um/daryaft/releases/download/v1.12.0/daryaft_darwin_amd64.tar.gz"
    sha256 "0e49832ad7d72963f6983e5d0ed01832e0e201396668492be242fc4e2f8eba16"
  end

  def install
    bin.install "daryaft"
  end

  test do
    system "#{bin}/daryaft", "version"
  end
end
