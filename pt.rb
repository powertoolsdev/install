PT_VERSION = '0.0.56'
PT_GITREF = 'c985bb93072e44e3d280d9beed06b5cecd6de228'
PT_SHA256 = 'e359294dcb495a456cee7abb80d51aa2ee7320bfac61e204f54d6045e8b53bc8'


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