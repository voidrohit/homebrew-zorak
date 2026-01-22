class Zorak < Formula
  desc "Production-ready CLI for AWS SSO and Kubernetes management"
  homepage "https://github.com/voidrohit/zorak"
  version "0.1.0"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/voidrohit/zorak/releases/download/v0.0.1/zorak-Darwin-arm64.tar.gz"
  sha256 "444ac4a2c8eb48fbee3838a5587d67dfaa66f48f61f81d5694052261cae1cb2a"

  def install
    bin.install Dir["**/bin/zorak"]
    bin.install Dir["**/bin/zorak-k8s"]
  end

  test do
    system bin/"zorak", "--version"
    system bin/"zorak-k8s", "--version"
  end
end
