# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Drun < Formula
  desc "A docker run that automatically mounts your current directory"
  homepage "https://github.com/jpbochi/drun"
  url "https://github.com/jpbochi/drun/archive/v0.2.tar.gz"
  version "0.2"
  sha256 "43118694b69a0ac5d050f4ff8ecfff412fac4db2bc2a5ae82c750f63143e297c"
  # to get new sha256, do `wget --no-verbose -O - https://... | shasum -a 256`

  def install
    bin.install "drun"
    bin.install "drun-node"
  end

  test do
    system "#{bin}/drun alpine true"
  end
end
