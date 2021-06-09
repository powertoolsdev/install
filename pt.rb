PT_VERSION = '0.0.65'
PT_GITREF = '9557359092492c8a1047bade9ec385a41a959633'
PT_SHA256 = '3b87edeabc9ac90ddfa6beb98327fa16f97a866218bcd322bcebe2d2f4410b09'


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