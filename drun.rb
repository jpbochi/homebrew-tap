# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Drun < Formula
  desc "A docker run that automatically mounts your current directory"
  homepage "https://github.com/jpbochi/drun"
  url "https://github.com/jpbochi/drun/archive/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "e485dac72c8daea5fb1420535c38ec288dfefce647fd661914157f6bfaa9dd16"
  # to get new sha256, do `wget --no-verbose -O - https://... | shasum -a 256`

  def install
    bin.install "drun"
  end

  test do
    system "#{bin}/drun alpine true"
  end
end
