# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Drun < Formula
  desc "A docker run that automatically mounts your current directory"
  homepage "https://github.com/jpbochi/drun"
  url "https://github.com/jpbochi/drun/archive/v0.2.1.tar.gz"
  version "0.2.1"
  sha256 "d966628d302241f19e52b8276e0b7fb6f05ad5a4d3d857bbd06d06d008b1c5d0"
  # to get new sha256, do `wget --no-verbose -O - https://... | shasum -a 256`

  def install
    bin.install "drun"
    bin.install "drun-node"
  end

  test do
    system "#{bin}/drun alpine true"
  end
end
