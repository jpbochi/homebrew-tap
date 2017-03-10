# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Drun < Formula
  desc "A docker run that automatically mounts your current directory"
  homepage "https://github.com/jpbochi/drun"
  url "https://github.com/jpbochi/drun/archive/v0.10.0.tar.gz"
  version "0.10.0"
  sha256 "2eeca9cec173629d4d7eb70f2c3408a14f5a26e008fd6d9052dbfc25b39a667c"
  # to get new sha256, do `wget --no-verbose -O - https://... | shasum -a 256`

  def install
    bin.install "drun"
  end

  test do
    system "#{bin}/drun alpine true"
  end
end
