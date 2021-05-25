PT_VERSION = '0.0.60'
PT_GITREF = '68132521060c44e7b7752be868ecf673481c9dc6'
PT_SHA256 = 'e697fc9020906bcdda80e1de2dd585a76c278167dc8015e65ca4616674f15bea'


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