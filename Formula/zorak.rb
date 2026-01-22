class Zorak < Formula
  desc "Production-ready CLI for AWS SSO and Kubernetes management"
  homepage "https://github.com/voidrohit/zorak"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/voidrohit/zorak/releases/download/v0.1.0/zorak-Darwin-arm64.tar.gz"
      sha256 "444ac4a2c8eb48fbee3838a5587d67dfaa66f48f61f81d5694052261cae1cb2a"
    else
      url "https://github.com/voidrohit/zorak/releases/download/v0.1.0/zorak-Darwin-x86_64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/voidrohit/zorak/releases/download/v0.1.0/zorak-Linux-aarch64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    else
      url "https://github.com/voidrohit/zorak/releases/download/v0.1.0/zorak-Linux-x86_64.tar.gz"
      sha256 "REPLACE_WITH_ACTUAL_SHA256"
    end
  end

  def install
    bin.install "zorak/bin/zorak"
    bin.install "zorak/bin/zorak-k8s"
  end

  test do
    system "#{bin}/zorak", "--version"
    system "#{bin}/zorak-k8s", "--version"
  end
end
