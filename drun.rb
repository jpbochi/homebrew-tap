# Documentation: https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Drun < Formula
  desc "A docker run that automatically mounts your current directory"
  homepage "https://github.com/jpbochi/drun"
  url "https://github.com/jpbochi/drun/archive/v0.1.2.tar.gz"
  version "0.1.2"
  sha256 "567c4930d6602b872ba397c9fc97d30778466204d595e225e271eb4d95b703b6"

  def install
    bin.install "drun"
    bin.install "drun-node"
  end

  test do
    system "#{bin}/drun alpine true"
  end
end
