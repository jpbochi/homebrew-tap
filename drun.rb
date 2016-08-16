# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Drun < Formula
  desc "A docker run that automatically mounts your current directory"
  homepage "https://github.com/jpbochi/drun"
  url "https://github.com/jpbochi/drun/archive/v0.3.tar.gz"
  version "0.3"
  sha256 "693d0d133fcb2c3010aae454ee962b74a8df04e076e836950e0ba4796cf2b249"
  # to get new sha256, do `wget --no-verbose -O - https://... | shasum -a 256`

  def install
    bin.install "drun"
  end

  test do
    system "#{bin}/drun alpine true"
  end
end
