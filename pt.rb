PT_VERSION = '0.0.63'
PT_GITREF = '9825fb7c59d22210b8ce31144ca8b149269c3f6e'
PT_SHA256 = 'f862b4f7be8d11480aa7099e0cc68a6491276e2320be7ed778f575e86c0b9e98'


class Pt < Formula
  desc "Build, deploy and operate serverless,static and container apps with a single command."
  homepage "https://www.powertools.dev"
  bottle :unneeded
  version "#{PT_VERSION}"

  if OS.mac?
    url "https://download.powertools.dev/download/46ED852D-EC8F-4877-80E8-0248B7383912?version=#{PT_GITREF}"
    sha256 "#{PT_SHA256}"
  end

  def install
    bin.install "pt"
  end
end