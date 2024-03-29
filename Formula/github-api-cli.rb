class Gac < Formula
  version "0.1.1"
  
  desc "Access all of GitHub’s public API functionality from your command-line"
  homepage "https://github.com/thamaraiselvam/github-api-cli"
  sha256 "b4734a37cca2c5f525d73c37d94c4e3b3df9e546c48e700c18fa617d8ae835d8"
  url "https://github.com/thamaraiselvam/github-api-cli/archive/v#{version}.tar.gz"

  depends_on "go" => :build
  
  def install
    system "go",
        "build",
        "-mod=vendor",
        "-ldflags",
        "-X main.version=#{version}",
        "-o",
        "github-api-cli",
        "main.go"
      
    bin.install "github-api-cli"
  end
end
