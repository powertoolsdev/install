PT_VERSION = '0.0.67'
PT_GITREF = '99bd81026705cf6a47d6434f97556c9db1c1d713'
PT_SHA256 = 'e8a457120e3fd4f2c17db509498e7f12d2d209078eafd1af457fc7f8fd42aac2'


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