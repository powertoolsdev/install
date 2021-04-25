PT_VERSION = '0.0.54'
PT_GITREF = '61cdae0e0578914a9709151938a8c845be87c87d'
PT_SHA256 = 'a2eba4f8e862c18641e9c453737cb2c6d0d6b33927fef3eec16025707fcd3869'


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