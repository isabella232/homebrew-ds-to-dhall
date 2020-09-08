# This file was generated by GoReleaser. DO NOT EDIT.
class DsToDhall < Formula
  desc "CLI to translate deploy-sourcegraph YAML to Dhall"
  homepage "https://github.com/sourcegraph/ds-to-dhall"
  version "0.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/sourcegraph/ds-to-dhall/releases/download/v0.5.0/ds-to-dhall_0.5.0_Darwin_x86_64.tar.gz"
    sha256 "ed79b7494fd79d72460bb61cd547bfc0c6ab04eca8697b8df4c66e7b4ddd4149"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/sourcegraph/ds-to-dhall/releases/download/v0.5.0/ds-to-dhall_0.5.0_Linux_x86_64.tar.gz"
      sha256 "5444fefda3d5475969a2aaba5dd60e80fe143d3e7549d30dd04c348e6f975deb"
    end
  end

  def install
    bin.install "ds-to-dhall"
  end

  test do
    system "#{bin}/ds-to-dhall --help"
  end
end
