PT_VERSION = '0.0.55'
PT_GITREF = 'b039fad18039344ddf75af8f4b6b929041e7a28e'
PT_SHA256 = '74d4a4f4d9fa13794c1074f1c5ee0630d0eac3655cff3375b23d4f654b2ed568'


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