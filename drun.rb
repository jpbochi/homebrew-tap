# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Drun < Formula
  desc "A docker run that automatically mounts your current directory"
  homepage "https://github.com/jpbochi/drun"
  url "https://github.com/jpbochi/drun/archive/v1.1.1.tar.gz"
  version "1.1.1"
  sha256 "50803832b853c74bfad6bc5b89f4db5c277017fc07d2dbf854fd36939724e70b"
  # to get new sha256, do `wget --no-verbose -O - https://... | shasum -a 256`

  def install
    bin.install "drun"
  end

  test do
    system "#{bin}/drun alpine true"
  end
end
