class Remotop < Formula
  desc "Btop-style monitor for inbound SSH and remote terminal sessions"
  homepage "https://github.com/ricardusmd/remotop"
  url "https://raw.githubusercontent.com/ricardusmd/remotop/ec4f30450b66d9c82b9a58a1aaaa9e28f4f0a00b/remotop"
  version "0.1.4"
  sha256 "aabc8b79615b2bb6390671f5b2e82486635119790731f457da957cc343d0b362"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "remotop"
  end

  test do
    assert_match "remotop 0.1.4", shell_output("#{bin}/remotop --version")
  end
end
