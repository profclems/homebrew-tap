# This file was generated by GoReleaser. DO NOT EDIT.
class Glab < Formula
  desc "An open source gitlab cli tool"
  homepage "https://github.com/profclems/glab"
  version "1.7.0"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/profclems/glab/releases/download/v1.7.0/glab_1.7.0_macOS_amd64.tar.gz"
    sha256 "d1c77c8dda2414559c30846d313a60fe521e44c59f9aa64359d86de93525646b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/profclems/glab/releases/download/v1.7.0/glab_1.7.0_Linux_amd64.tar.gz"
      sha256 "a5286c8c75c69ed7359328ea66be4b6f235e120a6cb32be128746a50a26f3879"
    end
  end
  
  depends_on "git"

  def install
    bin.install "glab_v1.7.0_Linux_amd64"
    bin.install "glab_v1.7.0_Linux_amd64/bin/glab"
  end

  test do
    system "#{bin}/glab --version"
  end
end
