PT_VERSION = '0.0.58'
PT_GITREF = '844c3948955c4c1e7a81ba6864935bb321396239'
PT_SHA256 = '974caa08cb64a40abd97bdd82e7203adb13e88396fca761881138c1dfda65f85'


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