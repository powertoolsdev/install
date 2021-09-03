PT_VERSION = '0.0.87'
PT_GITREF = '30e67026b0a3efdbee59462aa7c33948db52b448'
PT_SHA256 = 'f786b6de286a86c9bab2674a7b51da827db380dd3f22f06e3d31b61e39fa22d9'
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