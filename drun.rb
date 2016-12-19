# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Drun < Formula
  desc "A docker run that automatically mounts your current directory"
  homepage "https://github.com/jpbochi/drun"
  url "https://github.com/jpbochi/drun/archive/v0.8.0.tar.gz"
  version "0.8.0"
  sha256 "f99c7f43ec5bae1728c7535a5a2777782afebd0bda7ff88882b4c3a176ad70cd"
  # to get new sha256, do `wget --no-verbose -O - https://... | shasum -a 256`

  def install
    bin.install "drun"
  end

  test do
    system "#{bin}/drun alpine true"
  end
end
