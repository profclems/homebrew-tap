# This file was generated by GoReleaser. DO NOT EDIT.
class Glab < Formula
  desc "An open source GitLab CLI tool"
  homepage "https://github.com/profclems/glab"
  version "1.12.0"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/profclems/glab/releases/download/v1.12.0/glab_1.12.0_macOS_amd64.tar.gz"
    sha256 "bcadabdd998bc6bb43fef0b0bf7d9e00364c6c2f264b02b00f0306c78f1dc68f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "http://github.com/profclems/glab/releases/download/v1.12.0/glab_1.12.0_Linux_amd64.tar.gz"
    sha256 "715a4041f0b75db1e80c73f3a855c1f286cb5e8f9c1a44b78211972cd547358c"
  end

  depends_on "git"

  def install
    bin.install "bin/glab"
  end

  test do
    system "#{bin}/glab version"
  end
end
