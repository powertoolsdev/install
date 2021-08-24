PT_VERSION = '0.0.79'
PT_GITREF = '00fd96c79b0ddc516a91f41bb314cf1d62cbc55d'
PT_SHA256 = '30287f3c5974f7a509a617cb1a00dd02444863e9f1e5bd122ca46b1b2a891423'
PT_INSTALL_TOKEN_FILEPATH = '/tmp/pt-install-token'

class Pt < Formula
  desc "Build, deploy and operate serverless,static and container apps with a single command."
  homepage "https://www.powertools.dev"
  bottle :unneeded
  version "#{PT_VERSION}"

  if OS.mac?
    dl_url = "https://download.powertools.dev/download/46ED852D-EC8F-4877-80E8-0248B7383912?version=#{PT_GITREF}"

    if File.file?(PT_INSTALL_TOKEN_FILEPATH)
      file = File.open(PT_INSTALL_TOKEN_FILEPATH)
      install_token = file.read.strip
      File.delete(PT_INSTALL_TOKEN_FILEPATH)
      dl_url += "&token=#{install_token}"
    end

    url dl_url
    sha256 "#{PT_SHA256}"
  end

  def install
    bin.install "pt"
  end
end