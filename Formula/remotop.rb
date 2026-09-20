class Remotop < Formula
  desc "Btop-style monitor for inbound SSH and remote terminal sessions"
  homepage "https://github.com/ricardusmd/remotop"
  url "https://raw.githubusercontent.com/ricardusmd/remotop/18c2d2829122e602873b1688b8c108e2126ddf38/remotop"
  version "0.1.3"
  sha256 "41d3ed4b6b8287244387875d00fbba93e0178d758104b865200e5503141e0c56"
  license "MIT"

  depends_on "python@3.12"

  def install
    bin.install "remotop"
  end

  test do
    assert_match "remotop 0.1.3", shell_output("#{bin}/remotop --version")
  end
end
