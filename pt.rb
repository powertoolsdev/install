PT_VERSION = '0.0.72'
PT_GITREF = 'c9deaeecc773b664531a6e9dc4c7ce8289ad7ef3'
PT_SHA256 = '6a67865ff55a252cf67223bab04ca45c7fe968f1b84a727cdc9c2b7a0b38bd78'
PT_WORKSTATION_FILEPATH = '/tmp/pt-workstation'

class Pt < Formula
  desc "Build, deploy and operate serverless,static and container apps with a single command."
  homepage "https://www.powertools.dev"
  bottle :unneeded
  version "#{PT_VERSION}"

  if OS.mac?
    dl_url = "https://download.powertools.dev/download/46ED852D-EC8F-4877-80E8-0248B7383912?version=#{PT_GITREF}"

    if File.file?(PT_WORKSTATION_FILEPATH)
      file = File.open(PT_WORKSTATION_FILEPATH)
      workstation_id = file.read.strip
      File.delete(PT_WORKSTATION_FILEPATH)
      dl_url += "&workstation_id=#{workstation_id}"
    end

    url dl_url
    sha256 "#{PT_SHA256}"
  end

  def install
    bin.install "pt"
  end
end
